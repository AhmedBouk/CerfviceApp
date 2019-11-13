package com.onlinebank.Models;

public class Produit extends BaseModelORM {
    private Integer id;

    String tableName = "ob_produit";

    private String nom;
    private String description;
    private Integer minage;
    private Integer maxage;
    private String situationfamiliale;
    private String situationprofessionnel;
    private Integer revenumin;
    private Integer revenumac;
    private String depenseregulieremax;
    private Integer enfants;
    private String situationlogement;
    private Integer minanciennetelogement;
    private Integer maxanciennetelogement;
    private Integer minancienneteprofessionnel;
    private Integer maxancienneteprofessionnel;
    private String created_at;
    private String updated_at;
    private Integer id_historique;

    @Override
    public Integer getId() {
        return id;
    }

    @Override
    public Produit setId(Integer id) {
        this.id = id;
        return this;
    }

    public String getNom() {
        return nom;
    }

    public Produit setNom(String nom) {
        this.nom = nom;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public Produit setDescription(String description) {
        this.description = description;
        return this;
    }

    public Integer getMinage() {
        return minage;
    }

    public Produit setMinage(Integer minage) {
        this.minage = minage;
        return this;
    }

    public Integer getMaxage() {
        return maxage;
    }

    public Produit setMaxage(Integer maxage) {
        this.maxage = maxage;
        return this;
    }

    public String getSituationfamiliale() {
        return situationfamiliale;
    }

    public Produit setSituationfamiliale(String situationfamiliale) {
        this.situationfamiliale = situationfamiliale;
        return this;
    }

    public String getSituationprofessionnel() {
        return situationprofessionnel;
    }

    public Produit setSituationprofessionnel(String situationprofessionnel) {
        this.situationprofessionnel = situationprofessionnel;
        return this;
    }

    public Integer getRevenumin() {
        return revenumin;
    }

    public Produit setRevenumin(Integer revenumin) {
        this.revenumin = revenumin;
        return this;
    }

    public Integer getRevenumac() {
        return revenumac;
    }

    public Produit setRevenumac(Integer revenumac) {
        this.revenumac = revenumac;
        return this;
    }

    public String getDepenseregulieremax() {
        return depenseregulieremax;
    }

    public Produit setDepenseregulieremax(String depenseregulieremax) {
        this.depenseregulieremax = depenseregulieremax;
        return this;
    }

    public Integer getEnfants() {
        return enfants;
    }

    public Produit setEnfants(Integer enfants) {
        this.enfants = enfants;
        return this;
    }

    public String getSituationlogement() {
        return situationlogement;
    }

    public Produit setSituationlogement(String situationlogement) {
        this.situationlogement = situationlogement;
        return this;
    }

    public Integer getMinanciennetelogement() {
        return minanciennetelogement;
    }

    public Produit setMinanciennetelogement(Integer minanciennetelogement) {
        this.minanciennetelogement = minanciennetelogement;
        return this;
    }

    public Integer getMaxanciennetelogement() {
        return maxanciennetelogement;
    }

    public Produit setMaxanciennetelogement(Integer maxanciennetelogement) {
        this.maxanciennetelogement = maxanciennetelogement;
        return this;
    }

    public Integer getMinancienneteprofessionnel() {
        return minancienneteprofessionnel;
    }

    public Produit setMinancienneteprofessionnel(Integer minancienneteprofessionnel) {
        this.minancienneteprofessionnel = minancienneteprofessionnel;
        return this;
    }

    public Integer getMaxancienneteprofessionnel() {
        return maxancienneteprofessionnel;
    }

    public Produit setMaxancienneteprofessionnel(Integer maxancienneteprofessionnel) {
        this.maxancienneteprofessionnel = maxancienneteprofessionnel;
        return this;
    }

    public String getCreated_at() {
        return created_at;
    }

    public Produit setCreated_at(String created_at) {
        this.created_at = created_at;
        return this;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public Produit setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
        return this;
    }

    public Integer getId_historique() {
        return id_historique;
    }

    public Produit setId_historique(Integer id_historique) {
        this.id_historique = id_historique;
        return this;
    }
}