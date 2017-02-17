/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rushin
 */
@Entity
@Table(name = "chat_msg")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ChatMsg.findAll", query = "SELECT c FROM ChatMsg c"),
    @NamedQuery(name = "ChatMsg.findByCmid", query = "SELECT c FROM ChatMsg c WHERE c.cmid = :cmid"),
    @NamedQuery(name = "ChatMsg.findByDateTime", query = "SELECT c FROM ChatMsg c WHERE c.dateTime = :dateTime")})
public class ChatMsg implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cmid")
    private Integer cmid;
    @Lob
    @Column(name = "msg")
    private String msg;
    @Column(name = "date_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateTime;
    @JoinColumn(name = "u_id", referencedColumnName = "u_id")
    @ManyToOne(optional = false)
    private Login uId;
    @JoinColumn(name = "g_id", referencedColumnName = "g_id")
    @ManyToOne(optional = false)
    private GroupDetail gId;

    public ChatMsg() {
    }

    public ChatMsg(Integer cmid) {
        this.cmid = cmid;
    }

    public Integer getCmid() {
        return cmid;
    }

    public void setCmid(Integer cmid) {
        this.cmid = cmid;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Date getDateTime() {
        return dateTime;
    }

    public void setDateTime(Date dateTime) {
        this.dateTime = dateTime;
    }

    public Login getUId() {
        return uId;
    }

    public void setUId(Login uId) {
        this.uId = uId;
    }

    public GroupDetail getGId() {
        return gId;
    }

    public void setGId(GroupDetail gId) {
        this.gId = gId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cmid != null ? cmid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ChatMsg)) {
            return false;
        }
        ChatMsg other = (ChatMsg) object;
        if ((this.cmid == null && other.cmid != null) || (this.cmid != null && !this.cmid.equals(other.cmid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.ChatMsg[ cmid=" + cmid + " ]";
    }
    
}
