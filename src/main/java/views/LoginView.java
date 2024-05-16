package views;

public class LoginView {

    String error = null;
    public LoginView(){
    }

    public LoginView(String error){
        this.error = error;
    }


    @Override
    public String toString() {
        return
        "<div class=\"login-register-image w-100 h-100\">" +
        "<div class=\"container\">" +
        "<div class=\"row\">" +
        "    <div class=\"col-md-6 offset-md-3\">"+
        "        <div class=\"login-form transparent mt-4 p-4 text-white\">"+
        "            <form action=\"login.jsp\" method=\"POST\" class=\"row g-3 \">"+
        "                <h4>Bienvenido/a</h4>"+
        "                <div class=\"col-12\">"+
        "                    <label>Usuario</label>"+
        "                    <input type=\"text\" name=\"playername\" class=\"form-control bg-transparent text-white\" placeholder=\"Usuario\" required>"+
        "                </div>"+
        "                <div class=\"col-12 transparent\">"+
        "                    <label>Contraseña</label>"+
        "                    <input type=\"password\" name=\"password\" class=\"form-control bg-transparent text-white\" placeholder=\"Contraseña\" pattern=\"^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,12}$\" required title=\"La contraseña debe tener entre 8 y 12 caracteres, al menos una mayúscula, una minúscula y un número.\">"+
        "                </div>"+
        ((error!=null)?"                <h4 class=\"col-12 error\">"+error+"</h4>":"")+
        "                <div class=\"col-12 p-3\">" +
        "                    <button type=\"submit\" class=\"btn btn-light float-end\">Login</button>"+
        "                </div>"+
        "            </form>"+
        "            <hr class=\"mt-4 border-light\">"+
        "            <div class=\"col-12\">"+
        "                <p class=\"text-center mb-0\">¿No tienes una cuenta? <a href=\"register.jsp\">Regístrate aquí</a></p>"+
        "            </div>"+
        "        </div>"+
        "    </div>"+
        "</div>"+
        "</div>";
    }
}
