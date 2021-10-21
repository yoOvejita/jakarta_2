package tags;

import java.io.IOException;
import java.io.StringWriter;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class JumboTag extends SimpleTagSupport {
	
	private String mensaje;//atributo manejado en el tag <mio:Jumbo mensaje="HOla"/>//setMensaje
	private String titulo;
	StringWriter sw = new StringWriter();
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public void doTag() throws JspException, IOException {
		if (mensaje != null && titulo != null) {//desde el atributo
	         JspWriter out = getJspContext().getOut();
	         //out.println(mensaje);
		
	         out.println("<div class=\"mt-4 p-5 bg-primary text-white rounded\"><h1>"+ titulo +"</h1><p>"+mensaje+"</p></div>");
	      }else {//desde el valor interno (cuerpo)
	          getJspBody().invoke(sw);
	          getJspContext().getOut().println(sw.toString());
	       }
	}
}

/* con cuerpo de tag (tag de apertura y cierre)
StringWriter sw = new StringWriter();//objeto que contendrá el texto 
	public void doTag() throws JspException, IOException {
	   getJspBody().invoke(sw);//S obtuvo el texto desde los tags(apertura-cierre)
	   getJspContext().getOut().println(sw.toString());//Se agrega el texto al "out"
	}
 */