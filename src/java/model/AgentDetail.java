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
import javax.persistence.Lob;
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
@Table(name = "agent_detail")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AgentDetail.findAll", query = "SELECT a FROM AgentDetail a"),
    @NamedQuery(name = "AgentDetail.findByAId", query = "SELECT a FROM AgentDetail a WHERE a.aId = :aId"),
    @NamedQuery(name = "AgentDetail.findByAFname", query = "SELECT a FROM AgentDetail a WHERE a.aFname = :aFname"),
    @NamedQuery(name = "AgentDetail.findByALname", query = "SELECT a FROM AgentDetail a WHERE a.aLname = :aLname"),
    @NamedQuery(name = "AgentDetail.findByAEmail", query = "SELECT a FROM AgentDetail a WHERE a.aEmail = :aEmail"),
    @NamedQuery(name = "AgentDetail.findByAState", query = "SELECT a FROM AgentDetail a WHERE a.aState = :aState"),
    @NamedQuery(name = "AgentDetail.findByACity", query = "SELECT a FROM AgentDetail a WHERE a.aCity = :aCity"),
    @NamedQuery(name = "AgentDetail.findByAArea", query = "SELECT a FROM AgentDetail a WHERE a.aArea = :aArea"),
    @NamedQuery(name = "AgentDetail.findByAStatus", query = "SELECT a FROM AgentDetail a WHERE a.aStatus = :aStatus"),
    @NamedQuery(name = "AgentDetail.findByANo", query = "SELECT a FROM AgentDetail a WHERE a.aNo = :aNo"),
    @NamedQuery(name = "AgentDetail.findByAAddress1", query = "SELECT a FROM AgentDetail a WHERE a.aAddress1 = :aAddress1"),
    @NamedQuery(name = "AgentDetail.findByAAddress2", query = "SELECT a FROM AgentDetail a WHERE a.aAddress2 = :aAddress2"),
    @NamedQuery(name = "AgentDetail.findByARating", query = "SELECT a FROM AgentDetail a WHERE a.aRating = :aRating"),
    @NamedQuery(name = "AgentDetail.findByACompanyname", query = "SELECT a FROM AgentDetail a WHERE a.aCompanyname = :aCompanyname"),
    @NamedQuery(name = "AgentDetail.findByAImg", query = "SELECT a FROM AgentDetail a WHERE a.aImg = :aImg"),
    @NamedQuery(name = "AgentDetail.findByAWorkx", query = "SELECT a FROM AgentDetail a WHERE a.aWorkx = :aWorkx")})
public class AgentDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "a_id")
    private Integer aId;
    @Column(name = "a_fname")
    private String aFname;
    @Column(name = "a_lname")
    private String aLname;
    @Column(name = "a_email")
    private String aEmail;
    @Column(name = "a_state")
    private String aState;
    @Column(name = "a_city")
    private String aCity;
    @Column(name = "a_area")
    private String aArea;
    @Column(name = "a_status")
    private String aStatus;
    @Column(name = "a_no")
    private String aNo;
    @Column(name = "a_address1")
    private String aAddress1;
    @Column(name = "a_address2")
    private String aAddress2;
    @Column(name = "a_rating")
    private Integer aRating;
    @Column(name = "a_companyname")
    private String aCompanyname;
    @Lob
    @Column(name = "a_description")
    private String aDescription;
    @Column(name = "a_img")
    private String aImg;
    @Column(name = "a_workx")
    private String aWorkx;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "aId")
    private Collection<AgentFeedback> agentFeedbackCollection;
    @JoinColumn(name = "u_id", referencedColumnName = "u_id")
    @ManyToOne(optional = false)
    private Login uId;

    public AgentDetail() {
    }

    public AgentDetail(Integer aId) {
        this.aId = aId;
    }

    public Integer getAId() {
        return aId;
    }

    public void setAId(Integer aId) {
        this.aId = aId;
    }

    public String getAFname() {
        return aFname;
    }

    public void setAFname(String aFname) {
        this.aFname = aFname;
    }

    public String getALname() {
        return aLname;
    }

    public void setALname(String aLname) {
        this.aLname = aLname;
    }

    public String getAEmail() {
        return aEmail;
    }

    public void setAEmail(String aEmail) {
        this.aEmail = aEmail;
    }

    public String getAState() {
        return aState;
    }

    public void setAState(String aState) {
        this.aState = aState;
    }

    public String getACity() {
        return aCity;
    }

    public void setACity(String aCity) {
        this.aCity = aCity;
    }

    public String getAArea() {
        return aArea;
    }

    public void setAArea(String aArea) {
        this.aArea = aArea;
    }

    public String getAStatus() {
        return aStatus;
    }

    public void setAStatus(String aStatus) {
        this.aStatus = aStatus;
    }

    public String getANo() {
        return aNo;
    }

    public void setANo(String aNo) {
        this.aNo = aNo;
    }

    public String getAAddress1() {
        return aAddress1;
    }

    public void setAAddress1(String aAddress1) {
        this.aAddress1 = aAddress1;
    }

    public String getAAddress2() {
        return aAddress2;
    }

    public void setAAddress2(String aAddress2) {
        this.aAddress2 = aAddress2;
    }

    public Integer getARating() {
        return aRating;
    }

    public void setARating(Integer aRating) {
        this.aRating = aRating;
    }

    public String getACompanyname() {
        return aCompanyname;
    }

    public void setACompanyname(String aCompanyname) {
        this.aCompanyname = aCompanyname;
    }

    public String getADescription() {
        return aDescription;
    }

    public void setADescription(String aDescription) {
        this.aDescription = aDescription;
    }

    public String getAImg() {
        return aImg;
    }

    public void setAImg(String aImg) {
        this.aImg = aImg;
    }

    public String getAWorkx() {
        return aWorkx;
    }

    public void setAWorkx(String aWorkx) {
        this.aWorkx = aWorkx;
    }

    @XmlTransient
    public Collection<AgentFeedback> getAgentFeedbackCollection() {
        return agentFeedbackCollection;
    }

    public void setAgentFeedbackCollection(Collection<AgentFeedback> agentFeedbackCollection) {
        this.agentFeedbackCollection = agentFeedbackCollection;
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
        hash += (aId != null ? aId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AgentDetail)) {
            return false;
        }
        AgentDetail other = (AgentDetail) object;
        if ((this.aId == null && other.aId != null) || (this.aId != null && !this.aId.equals(other.aId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.AgentDetail[ aId=" + aId + " ]";
    }
    
}
