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
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rushin
 */
@Entity
@Table(name = "AssetRecords_3")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AssetRecords3.findAll", query = "SELECT a FROM AssetRecords3 a"),
    @NamedQuery(name = "AssetRecords3.findById", query = "SELECT a FROM AssetRecords3 a WHERE a.id = :id"),
    @NamedQuery(name = "AssetRecords3.findByPrice", query = "SELECT a FROM AssetRecords3 a WHERE a.price = :price"),
    @NamedQuery(name = "AssetRecords3.findByYear", query = "SELECT a FROM AssetRecords3 a WHERE a.year = :year")})
public class AssetRecords3 implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Lob
    @Column(name = "Assetid")
    private String assetid;
    @Column(name = "Price")
    private Integer price;
    @Column(name = "Year")
    private Integer year;

    public AssetRecords3() {
    }

    public AssetRecords3(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAssetid() {
        return assetid;
    }

    public void setAssetid(String assetid) {
        this.assetid = assetid;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
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
        if (!(object instanceof AssetRecords3)) {
            return false;
        }
        AssetRecords3 other = (AssetRecords3) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.AssetRecords3[ id=" + id + " ]";
    }
    
}
