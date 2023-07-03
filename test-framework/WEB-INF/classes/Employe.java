package modele;
import etu1767.framework.*;

import java.io.File;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@PathUpload(filePath = "C:/Program Files/Apache Software Foundation/Tomcat 8.5_Tomcat8Oni/webapps/ETU1767-Framework/Images/")
public class Employe {
    Integer id;
    String nom;
    String prenom;
    Date date_de_naissance;
    FileUpload fileEmploye;
    public Employe(Integer id, String nom, String prenom, Date date_de_naissance, FileUpload fileEmploye) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.date_de_naissance = date_de_naissance;
        this.fileEmploye = fileEmploye;
    }
    public Employe(String nom, String prenom) {
        this.nom = nom;
        this.prenom = prenom;
    }
    public Employe() {
    }
    public Employe(Integer id, String nom, String prenom, Date date_de_naissance) {
        this.setId(id);
        this.setNom(nom);
        this.setPrenom(prenom);;
        this.setDate_de_naissance(date_de_naissance);;
    }
    @Url(method = "emp-jsp.gg")
    public ModelView methodeAAnnoter(){
        ModelView modelView = new ModelView("employe.jsp");
        return modelView;
    }

    @JsonEd
    @Url(method = "json-test.gg")
    public List<Employe> listeEmployers(){
        List<Employe> employes = new ArrayList<>();
        Employe employe1 = new Employe(1,"Jeon", "JK", new Date(1997, 7, 1));
        Employe employe2 = new Employe(2,"Wang", "Jackson", new Date(1994, 3, 26));
        Employe employe3 = new Employe(3,"Tuan", "Mark", new Date(1995, 12, 30));  
        employes.add(employe1);
        employes.add(employe2);
        employes.add(employe3);
        return employes;
    }

    @Url(method = "get-emp.gg")
    public ModelView getAllEmploye(){
        ModelView modelView = new ModelView("listeEmp.jsp");
        List<Employe> employes = listeEmployers();
        modelView.addItem("allEmploye", employes); 
        return modelView;
    }
    @Url(method = "add-emp.gg")
    public ModelView addEmploye(){
        ModelView modelView = new ModelView("sprint71.jsp");
        return modelView;
    }
    
    @Url(method = "add-emp-with-arguments.gg")
    @Arguments(arguments = {"id", "nom", "prenom", "date_de_naissance" , "fileEmploye"})
    public ModelView addEmployeWithArguments(Integer id, String nom, String prenom, Date date_de_naissance , FileUpload fileEmploye){
        ModelView modelView = new ModelView("sprint8.jsp");
        Employe employe = new Employe(id, nom, prenom, date_de_naissance , fileEmploye);
        modelView.addItem("employer", employe); 
        modelView.setJson(true);
        return modelView;
    }


    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    public String getPrenom() {
        return prenom;
    }
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    public Date getDate_de_naissance() {
        return date_de_naissance;
    }
    public void setDate_de_naissance(Date date_de_naissance) {
        this.date_de_naissance = date_de_naissance;
    }
    public FileUpload getFileEmploye() {
        return fileEmploye;
    }
    public void setFileEmploye(FileUpload fileEmploye) {
        this.fileEmploye = fileEmploye;
    }
}
