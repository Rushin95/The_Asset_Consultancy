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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rushin
 */
@Entity
@Table(name = "zip_master")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ZipMaster.findAll", query = "SELECT z FROM ZipMaster z"),
    @NamedQuery(name = "ZipMaster.findByZipId", query = "SELECT z FROM ZipMaster z WHERE z.zipId = :zipId"),
    @NamedQuery(name = "ZipMaster.findByZipCode", query = "SELECT z FROM ZipMaster z WHERE z.zipCode = :zipCode")})
public class ZipMaster implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "zip_id")
    private Integer zipId;
    @Column(name = "zip_code")
    private String zipCode;

    public ZipMaster() {
    }

    public ZipMaster(Integer zipId) {
        this.zipId = zipId;
    }

    public Integer getZipId() {
        return zipId;
    }

    public void setZipId(Integer zipId) {
        this.zipId = zipId;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (zipId != null ? zipId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ZipMaster)) {
            return false;
        }
        ZipMaster other = (ZipMaster) object;
        if ((this.zipId == null && other.zipId != null) || (this.zipId != null && !this.zipId.equals(other.zipId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.ZipMaster[ zipId=" + zipId + " ]";
    }
    
}
