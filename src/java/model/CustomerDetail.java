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
@Table(name = "customer_detail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CustomerDetail.findAll", query = "SELECT c FROM CustomerDetail c"),
    @NamedQuery(name = "CustomerDetail.findByCId", query = "SELECT c FROM CustomerDetail c WHERE c.cId = :cId"),
    @NamedQuery(name = "CustomerDetail.findByCFname", query = "SELECT c FROM CustomerDetail c WHERE c.cFname = :cFname"),
    @NamedQuery(name = "CustomerDetail.findByCLname", query = "SELECT c FROM CustomerDetail c WHERE c.cLname = :cLname"),
    @NamedQuery(name = "CustomerDetail.findByCNum", query = "SELECT c FROM CustomerDetail c WHERE c.cNum = :cNum"),
    @NamedQuery(name = "CustomerDetail.findByCEmail", query = "SELECT c FROM CustomerDetail c WHERE c.cEmail = :cEmail"),
    @NamedQuery(name = "CustomerDetail.findByCCity", query = "SELECT c FROM CustomerDetail c WHERE c.cCity = :cCity"),
    @NamedQuery(name = "CustomerDetail.findByCState", query = "SELECT c FROM CustomerDetail c WHERE c.cState = :cState"),
    @NamedQuery(name = "CustomerDetail.findByCArea", query = "SELECT c FROM CustomerDetail c WHERE c.cArea = :cArea"),
    @NamedQuery(name = "CustomerDetail.findByCImg", query = "SELECT c FROM CustomerDetail c WHERE c.cImg = :cImg")})
public class CustomerDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "c_id")
    private Integer cId;
    @Column(name = "c_fname")
    private String cFname;
    @Column(name = "c_lname")
    private String cLname;
    @Column(name = "c_num")
    private String cNum;
    @Column(name = "c_email")
    private String cEmail;
    @Column(name = "c_city")
    private String cCity;
    @Column(name = "c_state")
    private String cState;
    @Column(name = "c_area")
    private String cArea;
    @Column(name = "c_img")
    private String cImg;
    @JoinColumn(name = "u_id", referencedColumnName = "u_id")
    @ManyToOne(optional = false)
    private Login uId;

    public CustomerDetail() {
    }

    public CustomerDetail(Integer cId) {
        this.cId = cId;
    }

    public Integer getCId() {
        return cId;
    }

    public void setCId(Integer cId) {
        this.cId = cId;
    }

    public String getCFname() {
        return cFname;
    }

    public void setCFname(String cFname) {
        this.cFname = cFname;
    }

    public String getCLname() {
        return cLname;
    }

    public void setCLname(String cLname) {
        this.cLname = cLname;
    }

    public String getCNum() {
        return cNum;
    }

    public void setCNum(String cNum) {
        this.cNum = cNum;
    }

    public String getCEmail() {
        return cEmail;
    }

    public void setCEmail(String cEmail) {
        this.cEmail = cEmail;
    }

    public String getCCity() {
        return cCity;
    }

    public void setCCity(String cCity) {
        this.cCity = cCity;
    }

    public String getCState() {
        return cState;
    }

    public void setCState(String cState) {
        this.cState = cState;
    }

    public String getCArea() {
        return cArea;
    }

    public void setCArea(String cArea) {
        this.cArea = cArea;
    }

    public String getCImg() {
        return cImg;
    }

    public void setCImg(String cImg) {
        this.cImg = cImg;
    }

    public Login getUId() {
        return uId;
    }

    public void setUId(Login uId) {
        this.uId = uId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cId != null ? cId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CustomerDetail)) {
            return false;
        }
        CustomerDetail other = (CustomerDetail) object;
        if ((this.cId == null && other.cId != null) || (this.cId != null && !this.cId.equals(other.cId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.CustomerDetail[ cId=" + cId + " ]";
    }
    
}
