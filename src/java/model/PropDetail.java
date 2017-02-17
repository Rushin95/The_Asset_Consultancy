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
@Table(name = "prop_detail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PropDetail.findAll", query = "SELECT p FROM PropDetail p"),
    @NamedQuery(name = "PropDetail.findByPId", query = "SELECT p FROM PropDetail p WHERE p.pId = :pId"),
    @NamedQuery(name = "PropDetail.findByPName", query = "SELECT p FROM PropDetail p WHERE p.pName = :pName"),
    @NamedQuery(name = "PropDetail.findByPPrice", query = "SELECT p FROM PropDetail p WHERE p.pPrice = :pPrice"),
    @NamedQuery(name = "PropDetail.findByPDescription", query = "SELECT p FROM PropDetail p WHERE p.pDescription = :pDescription"),
    @NamedQuery(name = "PropDetail.findByPAdd1", query = "SELECT p FROM PropDetail p WHERE p.pAdd1 = :pAdd1"),
    @NamedQuery(name = "PropDetail.findByPAdd2", query = "SELECT p FROM PropDetail p WHERE p.pAdd2 = :pAdd2"),
    @NamedQuery(name = "PropDetail.findByPState", query = "SELECT p FROM PropDetail p WHERE p.pState = :pState"),
    @NamedQuery(name = "PropDetail.findByPCity", query = "SELECT p FROM PropDetail p WHERE p.pCity = :pCity"),
    @NamedQuery(name = "PropDetail.findByPArea", query = "SELECT p FROM PropDetail p WHERE p.pArea = :pArea"),
    @NamedQuery(name = "PropDetail.findByPGmap", query = "SELECT p FROM PropDetail p WHERE p.pGmap = :pGmap"),
    @NamedQuery(name = "PropDetail.findByPBhk", query = "SELECT p FROM PropDetail p WHERE p.pBhk = :pBhk"),
    @NamedQuery(name = "PropDetail.findByPAge", query = "SELECT p FROM PropDetail p WHERE p.pAge = :pAge"),
    @NamedQuery(name = "PropDetail.findByPZipcode", query = "SELECT p FROM PropDetail p WHERE p.pZipcode = :pZipcode"),
    @NamedQuery(name = "PropDetail.findByPType", query = "SELECT p FROM PropDetail p WHERE p.pType = :pType"),
    @NamedQuery(name = "PropDetail.findByPStatus", query = "SELECT p FROM PropDetail p WHERE p.pStatus = :pStatus"),
    @NamedQuery(name = "PropDetail.findByPImg1", query = "SELECT p FROM PropDetail p WHERE p.pImg1 = :pImg1"),
    @NamedQuery(name = "PropDetail.findByPFloor", query = "SELECT p FROM PropDetail p WHERE p.pFloor = :pFloor"),
    @NamedQuery(name = "PropDetail.findByPImg2", query = "SELECT p FROM PropDetail p WHERE p.pImg2 = :pImg2"),
    @NamedQuery(name = "PropDetail.findByPImg3", query = "SELECT p FROM PropDetail p WHERE p.pImg3 = :pImg3"),
    @NamedQuery(name = "PropDetail.findByPImg4", query = "SELECT p FROM PropDetail p WHERE p.pImg4 = :pImg4")})
public class PropDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "p_id")
    private Integer pId;
    @Column(name = "p_name")
    private String pName;
    @Column(name = "p_price")
    private Integer pPrice;
    @Column(name = "p_description")
    private String pDescription;
    @Column(name = "p_add1")
    private String pAdd1;
    @Column(name = "p_add2")
    private String pAdd2;
    @Column(name = "p_state")
    private String pState;
    @Column(name = "p_city")
    private String pCity;
    @Column(name = "p_area")
    private String pArea;
    @Column(name = "p_gmap")
    private String pGmap;
    @Column(name = "p_bhk")
    private String pBhk;
    @Column(name = "p_age")
    private Integer pAge;
    @Column(name = "p_zipcode")
    private String pZipcode;
    @Column(name = "p_type")
    private String pType;
    @Column(name = "p_status")
    private String pStatus;
    @Column(name = "p_img1")
    private String pImg1;
    @Column(name = "p_floor")
    private Integer pFloor;
    @Column(name = "p_img2")
    private String pImg2;
    @Column(name = "p_img3")
    private String pImg3;
    @Column(name = "p_img4")
    private String pImg4;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pId")
    private Collection<PropFeedback> propFeedbackCollection;
    @JoinColumn(name = "u_id", referencedColumnName = "u_id")
    @ManyToOne(optional = false)
    private Login uId;

    public PropDetail() {
    }

    public PropDetail(Integer pId) {
        this.pId = pId;
    }

    public Integer getPId() {
        return pId;
    }

    public void setPId(Integer pId) {
        this.pId = pId;
    }

    public String getPName() {
        return pName;
    }

    public void setPName(String pName) {
        this.pName = pName;
    }

    public Integer getPPrice() {
        return pPrice;
    }

    public void setPPrice(Integer pPrice) {
        this.pPrice = pPrice;
    }

    public String getPDescription() {
        return pDescription;
    }

    public void setPDescription(String pDescription) {
        this.pDescription = pDescription;
    }

    public String getPAdd1() {
        return pAdd1;
    }

    public void setPAdd1(String pAdd1) {
        this.pAdd1 = pAdd1;
    }

    public String getPAdd2() {
        return pAdd2;
    }

    public void setPAdd2(String pAdd2) {
        this.pAdd2 = pAdd2;
    }

    public String getPState() {
        return pState;
    }

    public void setPState(String pState) {
        this.pState = pState;
    }

    public String getPCity() {
        return pCity;
    }

    public void setPCity(String pCity) {
        this.pCity = pCity;
    }

    public String getPArea() {
        return pArea;
    }

    public void setPArea(String pArea) {
        this.pArea = pArea;
    }

    public String getPGmap() {
        return pGmap;
    }

    public void setPGmap(String pGmap) {
        this.pGmap = pGmap;
    }

    public String getPBhk() {
        return pBhk;
    }

    public void setPBhk(String pBhk) {
        this.pBhk = pBhk;
    }

    public Integer getPAge() {
        return pAge;
    }

    public void setPAge(Integer pAge) {
        this.pAge = pAge;
    }

    public String getPZipcode() {
        return pZipcode;
    }

    public void setPZipcode(String pZipcode) {
        this.pZipcode = pZipcode;
    }

    public String getPType() {
        return pType;
    }

    public void setPType(String pType) {
        this.pType = pType;
    }

    public String getPStatus() {
        return pStatus;
    }

    public void setPStatus(String pStatus) {
        this.pStatus = pStatus;
    }

    public String getPImg1() {
        return pImg1;
    }

    public void setPImg1(String pImg1) {
        this.pImg1 = pImg1;
    }

    public Integer getPFloor() {
        return pFloor;
    }

    public void setPFloor(Integer pFloor) {
        this.pFloor = pFloor;
    }

    public String getPImg2() {
        return pImg2;
    }

    public void setPImg2(String pImg2) {
        this.pImg2 = pImg2;
    }

    public String getPImg3() {
        return pImg3;
    }

    public void setPImg3(String pImg3) {
        this.pImg3 = pImg3;
    }

    public String getPImg4() {
        return pImg4;
    }

    public void setPImg4(String pImg4) {
        this.pImg4 = pImg4;
    }

    @XmlTransient
    public Collection<PropFeedback> getPropFeedbackCollection() {
        return propFeedbackCollection;
    }

    public void setPropFeedbackCollection(Collection<PropFeedback> propFeedbackCollection) {
        this.propFeedbackCollection = propFeedbackCollection;
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
        hash += (pId != null ? pId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PropDetail)) {
            return false;
        }
        PropDetail other = (PropDetail) object;
        if ((this.pId == null && other.pId != null) || (this.pId != null && !this.pId.equals(other.pId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.PropDetail[ pId=" + pId + " ]";
    }
    
}
