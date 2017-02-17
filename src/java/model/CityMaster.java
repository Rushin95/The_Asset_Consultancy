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
@Table(name = "city_master")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CityMaster.findAll", query = "SELECT c FROM CityMaster c"),
    @NamedQuery(name = "CityMaster.findByCityId", query = "SELECT c FROM CityMaster c WHERE c.cityId = :cityId"),
    @NamedQuery(name = "CityMaster.findByCityName", query = "SELECT c FROM CityMaster c WHERE c.cityName = :cityName")})
public class CityMaster implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "city_id")
    private Integer cityId;
    @Column(name = "city_name")
    private String cityName;
    @JoinColumn(name = "s_id", referencedColumnName = "s_id")
    @ManyToOne
    private StateMaster sId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cityId")
    private Collection<AreaMaster> areaMasterCollection;

    public CityMaster() {
    }

    public CityMaster(Integer cityId) {
        this.cityId = cityId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public StateMaster getSId() {
        return sId;
    }

    public void setSId(StateMaster sId) {
        this.sId = sId;
    }

    @XmlTransient
    public Collection<AreaMaster> getAreaMasterCollection() {
        return areaMasterCollection;
    }

    public void setAreaMasterCollection(Collection<AreaMaster> areaMasterCollection) {
        this.areaMasterCollection = areaMasterCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cityId != null ? cityId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CityMaster)) {
            return false;
        }
        CityMaster other = (CityMaster) object;
        if ((this.cityId == null && other.cityId != null) || (this.cityId != null && !this.cityId.equals(other.cityId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.CityMaster[ cityId=" + cityId + " ]";
    }
    
}
