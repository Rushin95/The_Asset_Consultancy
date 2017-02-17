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
@Table(name = "login")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Login.findAll", query = "SELECT l FROM Login l"),
    @NamedQuery(name = "Login.findByUId", query = "SELECT l FROM Login l WHERE l.uId = :uId"),
    @NamedQuery(name = "Login.findByUName", query = "SELECT l FROM Login l WHERE l.uName = :uName"),
    @NamedQuery(name = "Login.findByPwd", query = "SELECT l FROM Login l WHERE l.pwd = :pwd"),
    @NamedQuery(name = "Login.findByURole", query = "SELECT l FROM Login l WHERE l.uRole = :uRole")})
public class Login implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "u_id")
    private Integer uId;
    @Basic(optional = false)
    @Column(name = "u_name")
    private String uName;
    @Basic(optional = false)
    @Column(name = "pwd")
    private String pwd;
    @Basic(optional = false)
    @Column(name = "u_role")
    private String uRole;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "uId")
    private Collection<PropFeedback> propFeedbackCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "uId")
    private Collection<PropDetail> propDetailCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "uId")
    private Collection<GroupDetail> groupDetailCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "uId")
    private Collection<CustomerDetail> customerDetailCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "uId")
    private Collection<GmemberDetail> gmemberDetailCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "uId")
    private Collection<ChatMsg> chatMsgCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "uId")
    private Collection<AgentFeedback> agentFeedbackCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "uId")
    private Collection<AgentDetail> agentDetailCollection;

    public Login() {
    }

    public Login(Integer uId) {
        this.uId = uId;
    }

    public Login(Integer uId, String uName, String pwd, String uRole) {
        this.uId = uId;
        this.uName = uName;
        this.pwd = pwd;
        this.uRole = uRole;
    }

    public Integer getUId() {
        return uId;
    }

    public void setUId(Integer uId) {
        this.uId = uId;
    }

    public String getUName() {
        return uName;
    }

    public void setUName(String uName) {
        this.uName = uName;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getURole() {
        return uRole;
    }

    public void setURole(String uRole) {
        this.uRole = uRole;
    }

    @XmlTransient
    public Collection<PropFeedback> getPropFeedbackCollection() {
        return propFeedbackCollection;
    }

    public void setPropFeedbackCollection(Collection<PropFeedback> propFeedbackCollection) {
        this.propFeedbackCollection = propFeedbackCollection;
    }

    @XmlTransient
    public Collection<PropDetail> getPropDetailCollection() {
        return propDetailCollection;
    }

    public void setPropDetailCollection(Collection<PropDetail> propDetailCollection) {
        this.propDetailCollection = propDetailCollection;
    }

    @XmlTransient
    public Collection<GroupDetail> getGroupDetailCollection() {
        return groupDetailCollection;
    }

    public void setGroupDetailCollection(Collection<GroupDetail> groupDetailCollection) {
        this.groupDetailCollection = groupDetailCollection;
    }

    @XmlTransient
    public Collection<CustomerDetail> getCustomerDetailCollection() {
        return customerDetailCollection;
    }

    public void setCustomerDetailCollection(Collection<CustomerDetail> customerDetailCollection) {
        this.customerDetailCollection = customerDetailCollection;
    }

    @XmlTransient
    public Collection<GmemberDetail> getGmemberDetailCollection() {
        return gmemberDetailCollection;
    }

    public void setGmemberDetailCollection(Collection<GmemberDetail> gmemberDetailCollection) {
        this.gmemberDetailCollection = gmemberDetailCollection;
    }

    @XmlTransient
    public Collection<ChatMsg> getChatMsgCollection() {
        return chatMsgCollection;
    }

    public void setChatMsgCollection(Collection<ChatMsg> chatMsgCollection) {
        this.chatMsgCollection = chatMsgCollection;
    }

    @XmlTransient
    public Collection<AgentFeedback> getAgentFeedbackCollection() {
        return agentFeedbackCollection;
    }

    public void setAgentFeedbackCollection(Collection<AgentFeedback> agentFeedbackCollection) {
        this.agentFeedbackCollection = agentFeedbackCollection;
    }

    @XmlTransient
    public Collection<AgentDetail> getAgentDetailCollection() {
        return agentDetailCollection;
    }

    public void setAgentDetailCollection(Collection<AgentDetail> agentDetailCollection) {
        this.agentDetailCollection = agentDetailCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (uId != null ? uId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Login)) {
            return false;
        }
        Login other = (Login) object;
        if ((this.uId == null && other.uId != null) || (this.uId != null && !this.uId.equals(other.uId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Login[ uId=" + uId + " ]";
    }
    
}
