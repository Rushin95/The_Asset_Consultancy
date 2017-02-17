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
@Table(name = "AssetData")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AssetData.findAll", query = "SELECT a FROM AssetData a"),
    @NamedQuery(name = "AssetData.findById", query = "SELECT a FROM AssetData a WHERE a.id = :id"),
    @NamedQuery(name = "AssetData.findByStartPrice", query = "SELECT a FROM AssetData a WHERE a.startPrice = :startPrice"),
    @NamedQuery(name = "AssetData.findByStartYear", query = "SELECT a FROM AssetData a WHERE a.startYear = :startYear"),
    @NamedQuery(name = "AssetData.findByFinalPrice", query = "SELECT a FROM AssetData a WHERE a.finalPrice = :finalPrice"),
    @NamedQuery(name = "AssetData.findByFinalYear", query = "SELECT a FROM AssetData a WHERE a.finalYear = :finalYear"),
    @NamedQuery(name = "AssetData.findByPid", query = "SELECT a FROM AssetData a WHERE a.pid = :pid")})
public class AssetData implements Serializable {
    private static final long serialVersionUID = 1L;
    @Column(name = "id")
    private Integer id;
    @Column(name = "startPrice")
    private String startPrice;
    @Column(name = "startYear")
    private String startYear;
    @Column(name = "FinalPrice")
    private String finalPrice;
    @Column(name = "finalYear")
    private String finalYear;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "pid")
    private Integer pid;

    public AssetData() {
    }

    public AssetData(Integer pid) {
        this.pid = pid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStartPrice() {
        return startPrice;
    }

    public void setStartPrice(String startPrice) {
        this.startPrice = startPrice;
    }

    public String getStartYear() {
        return startYear;
    }

    public void setStartYear(String startYear) {
        this.startYear = startYear;
    }

    public String getFinalPrice() {
        return finalPrice;
    }

    public void setFinalPrice(String finalPrice) {
        this.finalPrice = finalPrice;
    }

    public String getFinalYear() {
        return finalYear;
    }

    public void setFinalYear(String finalYear) {
        this.finalYear = finalYear;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pid != null ? pid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AssetData)) {
            return false;
        }
        AssetData other = (AssetData) object;
        if ((this.pid == null && other.pid != null) || (this.pid != null && !this.pid.equals(other.pid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.AssetData[ pid=" + pid + " ]";
    }
    
}
