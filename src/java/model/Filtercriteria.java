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
@Table(name = "Filter_criteria")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Filtercriteria.findAll", query = "SELECT f FROM Filtercriteria f"),
    @NamedQuery(name = "Filtercriteria.findByCrId", query = "SELECT f FROM Filtercriteria f WHERE f.crId = :crId"),
    @NamedQuery(name = "Filtercriteria.findByZip", query = "SELECT f FROM Filtercriteria f WHERE f.zip = :zip"),
    @NamedQuery(name = "Filtercriteria.findByArea", query = "SELECT f FROM Filtercriteria f WHERE f.area = :area"),
    @NamedQuery(name = "Filtercriteria.findByType", query = "SELECT f FROM Filtercriteria f WHERE f.type = :type"),
    @NamedQuery(name = "Filtercriteria.findByBhk", query = "SELECT f FROM Filtercriteria f WHERE f.bhk = :bhk")})
public class Filtercriteria implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cr_id")
    private Integer crId;
    @Column(name = "zip")
    private String zip;
    @Column(name = "area")
    private String area;
    @Column(name = "type")
    private String type;
    @Column(name = "bhk")
    private String bhk;

    public Filtercriteria() {
    }

    public Filtercriteria(Integer crId) {
        this.crId = crId;
    }

    public Integer getCrId() {
        return crId;
    }

    public void setCrId(Integer crId) {
        this.crId = crId;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBhk() {
        return bhk;
    }

    public void setBhk(String bhk) {
        this.bhk = bhk;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (crId != null ? crId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Filtercriteria)) {
            return false;
        }
        Filtercriteria other = (Filtercriteria) object;
        if ((this.crId == null && other.crId != null) || (this.crId != null && !this.crId.equals(other.crId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Filtercriteria[ crId=" + crId + " ]";
    }
    
}
