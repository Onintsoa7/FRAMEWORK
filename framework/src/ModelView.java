package etu1767.framework;

import java.util.HashMap;
import java.util.List;

public class ModelView {
    private String vueRedirection;
    private HashMap<String, Object> data = new HashMap<>();
    private HashMap<String, Object> session = new HashMap<>();
    private boolean isJson;
    private boolean invalidateSession;
    private List<String> removeSession;
    public ModelView(String vueRedirection, HashMap<String, Object> data, HashMap<String, Object> session,
            boolean isJson, boolean invalidateSession, List<String> removeSession) {
        this.vueRedirection = vueRedirection;
        this.data = data;
        this.session = session;
        this.isJson = isJson;
        this.invalidateSession = invalidateSession;
        this.removeSession = removeSession;
    }
    public ModelView(String vueRedirection, HashMap<String, Object> data, HashMap<String, Object> session,
            boolean isJson, boolean invalidateSession) {
        this.vueRedirection = vueRedirection;
        this.data = data;
        this.session = session;
        this.isJson = isJson;
        this.invalidateSession = invalidateSession;
    }
    public ModelView(String vueRedirection, HashMap<String, Object> data, HashMap<String, Object> session,
            boolean isJson) {
        this.vueRedirection = vueRedirection;
        this.data = data;
        this.session = session;
        this.isJson = isJson;
    }
    public ModelView(String vueRedirection, HashMap<String, Object> data, HashMap<String, Object> session) {
        this.vueRedirection = vueRedirection;
        this.data = data;
        this.session = session;
    }
    //Ajout de valeur dans Hashmap data
    public void addItem(String stringToAdd, Object objectToAdd){
        this.getData().put(stringToAdd, objectToAdd);
    }
    //Ajout de valeur dans Hashmap session
    public void addSession(String stringToAdd, Object objectToAdd){
        this.getSession().put(stringToAdd, objectToAdd);
    }

    public ModelView() {
    }

    public ModelView(String vueRedirection) {
        this.setVueRedirection(vueRedirection);
    }

    public String getVueRedirection() {
        return vueRedirection;
    }

    public void setVueRedirection(String vueRedirection) {
        this.vueRedirection = vueRedirection;
    }

    public HashMap<String, Object> getData() {
        return data;
    }

    public void setData(HashMap<String, Object> data) {
        this.data = data;
    }

    public HashMap<String, Object> getSession() {
        return session;
    }

    public void setSession(HashMap<String, Object> session) {
        this.session = session;
    }
    public boolean isJson() {
        return isJson;
    }
    public void setJson(boolean isJson) {
        this.isJson = isJson;
    }
    public boolean isInvalidateSession() {
        return invalidateSession;
    }
    public void setInvalidateSession(boolean invalidateSession) {
        this.invalidateSession = invalidateSession;
    }
    public List<String> getRemoveSession() {
        return removeSession;
    }
    public void setRemoveSession(List<String> removeSession) {
        this.removeSession = removeSession;
    }

}
