# FRAMEWORK ETU1767
FRAMEWORK S4
---> 
web.xml:
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://java.sun.com/xml/ns/j2ee"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://java.sun.com/xml/ns/j2ee
http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd"
version="2.4">
<display-name>FRAMEWORK DE @Ountsouu_1767</display-name>
<servlet>
    <servlet-name>FrontServlet</servlet-name>
    <servlet-class>
        etu1767.framework.servlet.FrontServlet
    </servlet-class>
    <init-param> 
        <param-name>packageDeScan</param-name> 
        <param-value>modele</param-value>
    </init-param>
</servlet>

<servlet-mapping>
    <servlet-name>FrontServlet</servlet-name>
    <url-pattern>*.gg</url-pattern>
</servlet-mapping>
</web-app>
--->

--->
    On peut ajouter le context-param suivant qui est actuellement au choix(Explication à venir)**
    
<context-param>
    <param-name>profile</param-name>
    <param-value>ano ou admin</param-value>
</context-param>
--->


    PRE-REQUIS:
    -Système d'exploitation : WINDOWS
    -Mettre la librairie etu1767.jar dans CLASSPATH
    -Le package commun de chaque classe est modele
    -Gson-2.8.2.jar

    LES FONCTIONNALITES:
    -Dans les fichiers.jsp toujours mettre comme extension des liens ou form ".gg" pour ne pas confondre avec les autres importations
        Exemple:
            <form action="methodeDeRedirection.gg" method="post">
            </form>
            <a href="methodeDeRedirection.gg">Méthode</a>
    -Dans la classe modele:
        ****Si la méthode retourne un ModelView:
                -Annoter la methode de la classe ou le lien/form est redirigé avec cette expression avec l'annotation @Url(method = "methodeDeRedirection.gg")
                -Puis mettre la vue de redirection en utilisant la fonction ModelView.setVueRedirection("vueDeRedirection.jsp");
                -Pour envoyer des valeurs venant de la classe modele.jsp on utilise la fonction ModelView.addItem("nomDeLaVariable", variable)
                -Pour renvoyer des valeurs venant de la view vers la classe modele :-Toujours mettre au même nom que les attributs de classe le nom des variables
                                                                                    -Soit : -Mettre en argument en utilisant l' annotation @Arguments(arguments = {"argument1", "argument2"})
                                                                                            -Recupérer directement 
                -Si on veut récupérer les valeurs sous forme de Json , utiliser la fonction ModelView.isJson(true)
                -Si on veut utiliser Singleton, annoter la classe par @Singleton
                -Utiliser le contextPath en haut ou appliqué la méthode suivante: 
                    modelView.addSession("profile", "admin");
                    modelView.addSession("estConnectee", true);
                    -Son rôle est d' indiquer quel profil est actuellement connecté
                    -Si la méthode est annoté @Auth("admin") ou si dans la méthode:
                        -Il faut que la session en circulation soit un "admin" sinon accès réfusé
                    -Dans un autre cas, la méthode devrait être toujours disponible         
                -FileUpload est le type de l' attribut si on veut renvoyer un fichier
                -Annoter la classe par @PathUpload(filePath="CheminAbsolueDuLieuDeTelechargement") si on veut réelement télécharger le fichier et ne pas oublier ("multipart/form-data") dans le formulaire 
                -Si une méthode est annotée @SessionS on y rajoute les sessions venant de HttpSession
                -Pour invalider une session on peut utiliser la fonction ModelView.invalidateSession(true) et mettre true de ModelView ModelView.setRemoveSession(List<String> lesSessionsASupprimer) si on veut spécifier qui supprimer;
        ****Si la méthode ne retourne pas un ModelView:
            -Pour afficher le retour de la méthode on annote par @JsonEd la méthode et se transformera en Json    

