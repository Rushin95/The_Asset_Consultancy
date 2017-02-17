/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author rushin
 */
@Entity
@Table(name = "group_detail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "GroupDetail.findAll", query = "SELECT g FROM GroupDetail g"),
    @NamedQuery(name = "GroupDetail.findByGId", query = "SELECT g FROM GroupDetail g WHERE g.gId = :gId"),
    @NamedQuery(name = "GroupDetail.findByGName", query = "SELECT g FROM GroupDetail g WHERE g.gName = :gName"),
    @NamedQuery(name = "GroupDetail.findByUName", query = "SELECT g FROM GroupDetail g WHERE g.uName = :uName")})
public class GroupDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "g_id")
    private Integer gId;
    @Column(name = "g_name")
    private String gName;
    @Column(name = "u_name")
    private String uName;
    @JoinColumn(name = "u_id", referencedColumnName = "u_id")
    @ManyToOne(optional = false)
    private Login uId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "gId")
    private Collection<GmemberDetail> gmemberDetailCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "gId")
    private Collection<ChatMsg> chatMsgCollection;

    public GroupDetail() {
    }

    public GroupDetail(Integer gId) {
        this.gId = gId;
    }

    public Integer getGId() {
        return gId;
    }

    public void setGId(Integer gId) {
        this.gId = gId;
    }

    public String getGName() {
        return gName;
    }

    public void setGName(String gName) {
        this.gName = gName;
    }

    public String getUName() {
        return uName;
    }

    public void setUName(String uName) {
        this.uName = uName;
    }

    public Login getUId() {
        return uId;
    }

    public void setUId(Login uId) {
        this.uId = uId;
    }

    @XmlTransient
    public Collection<GmemberDetail> getGmemberDetailCollection() {
        return gmemberDetailCollection;
    }

    public void setGmemberDetailCollection(Collection<GmemberDetail> gmemberDetailCollection) {
        this.gmemberDetailCollection = gmemberDetailCollection;
    }

    @XmlTransient
    public Collection<ChatMsg> getChatMsgCollection() {
        return chatMsgCollection;
    }

    public void setChatMsgCollection(Collection<ChatMsg> chatMsgCollection) {
        this.chatMsgCollection = chatMsgCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (gId != null ? gId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof GroupDetail)) {
            return false;
        }
        GroupDetail other = (GroupDetail) object;
        if ((this.gId == null && other.gId != null) || (this.gId != null && !this.gId.equals(other.gId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.GroupDetail[ gId=" + gId + " ]";
    }
    
}
