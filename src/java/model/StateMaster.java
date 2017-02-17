/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@Table(name = "state_master")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "StateMaster.findAll", query = "SELECT s FROM StateMaster s"),
    @NamedQuery(name = "StateMaster.findBySId", query = "SELECT s FROM StateMaster s WHERE s.sId = :sId"),
    @NamedQuery(name = "StateMaster.findBySName", query = "SELECT s FROM StateMaster s WHERE s.sName = :sName")})
public class StateMaster implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "s_id")
    private Integer sId;
    @Column(name = "s_name")
    private String sName;
    @OneToMany(mappedBy = "sId")
    private Collection<CityMaster> cityMasterCollection;

    public StateMaster() {
    }

    public StateMaster(Integer sId) {
        this.sId = sId;
    }

    public Integer getSId() {
        return sId;
    }

    public void setSId(Integer sId) {
        this.sId = sId;
    }

    public String getSName() {
        return sName;
    }

    public void setSName(String sName) {
        this.sName = sName;
    }

    @XmlTransient
    public Collection<CityMaster> getCityMasterCollection() {
        return cityMasterCollection;
    }

    public void setCityMasterCollection(Collection<CityMaster> cityMasterCollection) {
        this.cityMasterCollection = cityMasterCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (sId != null ? sId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof StateMaster)) {
            return false;
        }
        StateMaster other = (StateMaster) object;
        if ((this.sId == null && other.sId != null) || (this.sId != null && !this.sId.equals(other.sId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.StateMaster[ sId=" + sId + " ]";
    }
    
}
