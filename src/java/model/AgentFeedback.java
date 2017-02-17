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
@Table(name = "agent_feedback")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AgentFeedback.findAll", query = "SELECT a FROM AgentFeedback a"),
    @NamedQuery(name = "AgentFeedback.findByAfId", query = "SELECT a FROM AgentFeedback a WHERE a.afId = :afId"),
    @NamedQuery(name = "AgentFeedback.findByComment", query = "SELECT a FROM AgentFeedback a WHERE a.comment = :comment"),
    @NamedQuery(name = "AgentFeedback.findByTime", query = "SELECT a FROM AgentFeedback a WHERE a.time = :time")})
public class AgentFeedback implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "af_id")
    private Integer afId;
    @Column(name = "comment")
    private String comment;
    @Column(name = "time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date time;
    @JoinColumn(name = "u_id", referencedColumnName = "u_id")
    @ManyToOne(optional = false)
    private Login uId;
    @JoinColumn(name = "a_id", referencedColumnName = "a_id")
    @ManyToOne(optional = false)
    private AgentDetail aId;

    public AgentFeedback() {
    }

    public AgentFeedback(Integer afId) {
        this.afId = afId;
    }

    public Integer getAfId() {
        return afId;
    }

    public void setAfId(Integer afId) {
        this.afId = afId;
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

    public AgentDetail getAId() {
        return aId;
    }

    public void setAId(AgentDetail aId) {
        this.aId = aId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (afId != null ? afId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AgentFeedback)) {
            return false;
        }
        AgentFeedback other = (AgentFeedback) object;
        if ((this.afId == null && other.afId != null) || (this.afId != null && !this.afId.equals(other.afId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.AgentFeedback[ afId=" + afId + " ]";
    }
    
}
