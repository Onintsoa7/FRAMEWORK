package modele;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import etu1767.framework.*;
@Scope
public class Departement{
    String nomDeDepartement;
    Integer nombreEmploye;
    HashMap<String, Object> session;
    public Departement() {
    }

    public Departement(String nomDeDepartement, Integer nombreEmploye) {
        this.nomDeDepartement = nomDeDepartement;
        this.nombreEmploye = nombreEmploye;
    }

    @Auth(status = "ano")
    @Url(method = "dept-jsp.gg")
    public ModelView myJsp(){
        ModelView modelView = new ModelView("departement.jsp");
        return modelView;
    }

    @Auth(status = "admin")
    @Url(method = "add-dept.gg")
    public ModelView addDepartement(){
        ModelView modelView = new ModelView("sprint70.jsp");
        modelView.addSession("profile", "admin");
        modelView.addSession("estConnectee", true);
        return modelView;
    }
    public List<Departement> listeDepartements(){
        List<Departement> departements = new ArrayList<>();
        Departement departement1 = new Departement("RH", 15);
        Departement departement2 = new Departement("SCIENCES", 2);
        Departement departement3 = new Departement("COMPTABILITE", 12);  
        departements.add(departement1);
        departements.add(departement2);
        departements.add(departement3);
        return departements;
    }
    
    @Auth(status="ano")
    @Url(method = "add-with-arguments.gg")
    @Arguments(arguments = {"nombreEmploye"})
    public ModelView addDepartementWithArguments(Integer nombreEmploye){
        List<Departement> listeDepartements = listeDepartements();
        ModelView modelView = new ModelView("sprint70.jsp");
        for (int i = 0; i < listeDepartements.size(); i++) {
            if(listeDepartements.get(i).getNombreEmploye() == nombreEmploye.intValue()){
                modelView.addItem("nomDeDepartement", listeDepartements.get(i).getNomDeDepartement());
                modelView.addItem("nombreEmploye", listeDepartements.get(i).getNombreEmploye());
            }
        }
        return modelView;
    }
    
    public String getNomDeDepartement() {
        return nomDeDepartement;
    }
    public void setNomDeDepartement(String nomDeDepartement) {
        this.nomDeDepartement = nomDeDepartement;
    }
    public Integer getNombreEmploye() {
        return nombreEmploye;
    }
    public void setNombreEmploye(Integer nombreEmploye) {
        this.nombreEmploye = nombreEmploye;
    }

    public HashMap<String, Object> getSession() {
        return session;
    }

    public void setSession(HashMap<String, Object> session) {
        this.session = session;
    }
}