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
@Table(name = "area_master")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AreaMaster.findAll", query = "SELECT a FROM AreaMaster a"),
    @NamedQuery(name = "AreaMaster.findByAreaId", query = "SELECT a FROM AreaMaster a WHERE a.areaId = :areaId"),
    @NamedQuery(name = "AreaMaster.findByAreaName", query = "SELECT a FROM AreaMaster a WHERE a.areaName = :areaName"),
    @NamedQuery(name = "AreaMaster.findByZip", query = "SELECT a FROM AreaMaster a WHERE a.zip = :zip")})
public class AreaMaster implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "area_id")
    private Integer areaId;
    @Column(name = "area_name")
    private String areaName;
    @Column(name = "zip")
    private String zip;
    @JoinColumn(name = "city_id", referencedColumnName = "city_id")
    @ManyToOne(optional = false)
    private CityMaster cityId;

    public AreaMaster() {
    }

    public AreaMaster(Integer areaId) {
        this.areaId = areaId;
    }

    public Integer getAreaId() {
        return areaId;
    }

    public void setAreaId(Integer areaId) {
        this.areaId = areaId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public CityMaster getCityId() {
        return cityId;
    }

    public void setCityId(CityMaster cityId) {
        this.cityId = cityId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (areaId != null ? areaId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AreaMaster)) {
            return false;
        }
        AreaMaster other = (AreaMaster) object;
        if ((this.areaId == null && other.areaId != null) || (this.areaId != null && !this.areaId.equals(other.areaId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.AreaMaster[ areaId=" + areaId + " ]";
    }
    
}
