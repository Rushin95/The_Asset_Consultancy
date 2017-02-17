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
@Table(name = "AssetRecords")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AssetRecords.findAll", query = "SELECT a FROM AssetRecords a"),
    @NamedQuery(name = "AssetRecords.findById", query = "SELECT a FROM AssetRecords a WHERE a.id = :id"),
    @NamedQuery(name = "AssetRecords.findByAssetid", query = "SELECT a FROM AssetRecords a WHERE a.assetid = :assetid"),
    @NamedQuery(name = "AssetRecords.findByYear", query = "SELECT a FROM AssetRecords a WHERE a.year = :year"),
    @NamedQuery(name = "AssetRecords.findByPrice", query = "SELECT a FROM AssetRecords a WHERE a.price = :price")})
public class AssetRecords implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "Assetid")
    private Integer assetid;
    @Column(name = "Year")
    private String year;
    @Column(name = "Price")
    private String price;

    public AssetRecords() {
    }

    public AssetRecords(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAssetid() {
        return assetid;
    }

    public void setAssetid(Integer assetid) {
        this.assetid = assetid;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AssetRecords)) {
            return false;
        }
        AssetRecords other = (AssetRecords) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.AssetRecords[ id=" + id + " ]";
    }
    
}
