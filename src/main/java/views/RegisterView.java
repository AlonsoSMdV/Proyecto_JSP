package views;

public class RegisterView {

    String error = null;
    public RegisterView(){
    }

    public RegisterView(String error){
        this.error = error;
    }


    @Override
    public String toString() {
        return
        "<div class=\"login-register-image w-100 h-100\">" +
        "  <div class=\"container\">" +
        "   <div class=\"row\">" +
        "    <div class=\"col-md-6 offset-md-3\">"+
        "        <div class=\"login-form transparent mt-4 p-4 text-white\">"+
        "            <form action=\"doregistration.jsp\" method=\"POST\" class=\"row g-3\">"+
        "                <h4>Nuevo usuario/a</h4>"+
        "                <div class=\"col-12\">"+
        "                    <label>Nombre</label>"+
        "                    <input type=\"text\" name=\"name\" class=\"form-control bg-transparent text-white\" placeholder=\"Nombre\" required>"+
        "                </div>"+
        "                <div class=\"col-12\">"+
        "                    <label>Apellidos</label>"+
        "                    <input type=\"text\" name=\"surname\" class=\"form-control bg-transparent text-white\" placeholder=\"Apellidos\" required>"+
        "                </div>"+
        "                <div class=\"col-12\">"+
        "                    <label>Usuario</label>"+
        "                    <input type=\"text\" name=\"playername\" class=\"form-control bg-transparent text-white\" placeholder=\"Usuario\" required>"+
        "                </div>"+
        "                <div class=\"col-12\">"+
        "                    <label>Contraseña</label>"+
        "                    <input type=\"password\" name=\"password\" class=\"form-control bg-transparent text-white\" placeholder=\"Contraseña\" pattern=\"^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,12}$\" required title=\"La contraseña debe tener entre 8 y 12 caracteres, al menos una mayúscula, una minúscula y un número.\">"+
        "                </div>"+
        ((error!=null)?"                <h4 class=\"col-12 error\">"+error+"</h4>":"")+
        "                <div class=\"col-12 p-3\">" +
        "                    <button type=\"submit\" class=\"btn btn-light float-end\">Registrarse</button>"+
        "                </div>"+
        "            </form>"+
        "            <hr class=\"mt-4\">"+
        "            <div class=\"col-12\">"+
        "                <p class=\"text-center mb-0\">Quiero hacer <a href=\"index.jsp\">login</a></p>"+
        "            </div>"+
        "        </div>"+
        "    </div>"+
        "  </div>"+
        "</div>";
    }
}
