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
@Table(name = "prop_feedback")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PropFeedback.findAll", query = "SELECT p FROM PropFeedback p"),
    @NamedQuery(name = "PropFeedback.findByPfId", query = "SELECT p FROM PropFeedback p WHERE p.pfId = :pfId"),
    @NamedQuery(name = "PropFeedback.findByComment", query = "SELECT p FROM PropFeedback p WHERE p.comment = :comment"),
    @NamedQuery(name = "PropFeedback.findByTime", query = "SELECT p FROM PropFeedback p WHERE p.time = :time")})
public class PropFeedback implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "pf_id")
    private Integer pfId;
    @Column(name = "comment")
    private String comment;
    @Column(name = "time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date time;
    @JoinColumn(name = "u_id", referencedColumnName = "u_id")
    @ManyToOne(optional = false)
    private Login uId;
    @JoinColumn(name = "p_id", referencedColumnName = "p_id")
    @ManyToOne(optional = false)
    private PropDetail pId;

    public PropFeedback() {
    }

    public PropFeedback(Integer pfId) {
        this.pfId = pfId;
    }

    public Integer getPfId() {
        return pfId;
    }

    public void setPfId(Integer pfId) {
        this.pfId = pfId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Login getUId() {
        return uId;
    }

    public void setUId(Login uId) {
        this.uId = uId;
    }

    public PropDetail getPId() {
        return pId;
    }

    public void setPId(PropDetail pId) {
        this.pId = pId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pfId != null ? pfId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PropFeedback)) {
            return false;
        }
        PropFeedback other = (PropFeedback) object;
        if ((this.pfId == null && other.pfId != null) || (this.pfId != null && !this.pfId.equals(other.pfId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.PropFeedback[ pfId=" + pfId + " ]";
    }
    
}
