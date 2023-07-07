package modele;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.management.modelmbean.ModelMBean;

import etu1767.framework.*;

@Scope
@PathUpload(filePath = "C:/Program Files/Apache Software Foundation/Tomcat 8.5_Tomcat8Oni/webapps/test-framework/Images/")
public class Personne {
    String email;
    String motDePasse;
    Date dateNaissance;
    String poste;
    FileUpload fichier;
    
    public Personne(FileUpload fichier) {
        this.fichier = fichier;
    }

    public Personne() {
    }

    public List<Personne> personnes() {
        // Création des employés
        Personne employe1 = new Personne();
        employe1.setEmail("employe1@example.com");
        employe1.setMotDePasse("pass1");
        employe1.setDateNaissance(new java.sql.Date(1990 - 1900, 1 - 1, 1));

        Personne employe2 = new Personne();
        employe2.setEmail("employe2@example.com");
        employe2.setMotDePasse("pass2");
        employe1.setDateNaissance(new java.sql.Date(1990 - 1900, 1 - 1, 1));
        List<Personne> personnes = new ArrayList<>();
        personnes.add(employe1);
        personnes.add(employe2);
        return personnes;
    }

    @JsonEd
    @Url(method = "emp-list.gg")
    public Personne[] liste(){
        List<Personne> personnes = personnes();
        Personne[] tabPersonnes = new Personne[personnes.size()];
        for (int i = 0; i < personnes.size(); i++) {
            tabPersonnes[i] = personnes.get(i);
        }
        return tabPersonnes;
    }

    @Url(method = "login.gg")
    @Arguments(arguments = {"email", "motDePasse"})
    public ModelView login(String email, String motDePasse){
        ModelView formulaire = new ModelView();
        List<Personne> personnes = personnes();
        for (int i = 0; i < personnes.size(); i++) {
            if(personnes.get(i).getEmail().equalsIgnoreCase(email) && motDePasse.equalsIgnoreCase(personnes.get(i).getMotDePasse()) && i == 1){
                System.out.println(personnes.get(i).getEmail());
                formulaire.addItem("email", email);
                formulaire.addItem("motDePasse", motDePasse);
                formulaire.addItem("dateNaissance", personnes.get(i).getDateNaissance());
        }
        formulaire.setVueRedirection("accueil.jsp");
    }
    return formulaire;
}

    @Url(method = "add-emp.gg")
    public ModelView addPersonne(){
        ModelView formulaire = new ModelView();
        formulaire.setVueRedirection("formulaire.jsp");
        return formulaire;
    }
    @Url(method = "telechargeImage.gg")
    public ModelView downloader(){
        ModelView formulaire = new ModelView();
        formulaire.setVueRedirection("download.jsp");
        return formulaire;
    }

    @Url(method = "download.gg")
    @Arguments(arguments = {"fichier"})
    public ModelView downloadImage(FileUpload fichier){
        ModelView formulaire = new ModelView();
        Personne personne = new Personne(fichier);
        formulaire.addItem("personne", personne);
        formulaire.setJson(true);
        return formulaire;
    }

    @Url(method = "add-emp-page.gg")
    public ModelView showPersonne(){
        ModelView formulaire = new ModelView();
        formulaire.setVueRedirection("employe.jsp");
        return formulaire;
    }
    
    @Url(method = "logOut.gg")
    public ModelView disConnect(){
        ModelView modelView = new ModelView("index.jsp");
        List<String> sessionToRemove = new ArrayList<>();
        sessionToRemove.add("profile");
        sessionToRemove.add("estConnectee");
        modelView.setRemoveSession(sessionToRemove);
        return modelView;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }

    public Date getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public String getPoste() {
        return poste;
    }

    public void setPoste(String poste) {
        this.poste = poste;
    }

    public FileUpload getFichier() {
        return fichier;
    }

    public void setFichier(FileUpload fichier) {
        this.fichier = fichier;
    } 
}
