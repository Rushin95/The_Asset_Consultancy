/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rushin
 */
@Entity
@Table(name = "gmember_detail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "GmemberDetail.findAll", query = "SELECT g FROM GmemberDetail g"),
    @NamedQuery(name = "GmemberDetail.findByGmid", query = "SELECT g FROM GmemberDetail g WHERE g.gmid = :gmid")})
public class GmemberDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "gmid")
    private Integer gmid;
    @JoinColumn(name = "u_id", referencedColumnName = "u_id")
    @ManyToOne(optional = false)
    private Login uId;
    @JoinColumn(name = "g_id", referencedColumnName = "g_id")
    @ManyToOne(optional = false)
    private GroupDetail gId;

    public GmemberDetail() {
    }

    public GmemberDetail(Integer gmid) {
        this.gmid = gmid;
    }

    public Integer getGmid() {
        return gmid;
    }

    public void setGmid(Integer gmid) {
        this.gmid = gmid;
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
        hash += (gmid != null ? gmid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof GmemberDetail)) {
            return false;
        }
        GmemberDetail other = (GmemberDetail) object;
        if ((this.gmid == null && other.gmid != null) || (this.gmid != null && !this.gmid.equals(other.gmid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.GmemberDetail[ gmid=" + gmid + " ]";
    }
    
}
