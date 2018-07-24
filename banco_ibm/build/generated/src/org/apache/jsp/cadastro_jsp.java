package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class cadastro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n");
      out.write("        <title>Cadastro de Cliente - Banco Teste IBM</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table border=\"0\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th colspan=\"2\">Cadastro do Cliente</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("        </table>\n");
      out.write("        <form action=\"sucess.jsp\" method=\"POST\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Descrição: </strong></td>\n");
      out.write("                    <td><span style=\"font-size:smaller; font-style:italic;\">Bem vindo a página de cadastro do Banco Teste IBM, aqui você\n");
      out.write("                            poderá abrir sua conta sem precisar comparecer pessoalmente ao banco. Por favor, preencha os campos com\n");
      out.write("                            cuidado e verifique cuidadosamente todas as informações inseridas aqui.</span></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Nome: </strong></td>\n");
      out.write("                    <td><input type=\"text\" name=\"nomecli\" value=\"\" size=\"40\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Idade: </strong></td>\n");
      out.write("                    <td><input type=\"text\" name=\"idadecli\" value=\"\" size=\"2\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Endereço: </strong></td>\n");
      out.write("                    <td><input type=\"text\" name=\"enderecocli\" value=\"\" size=\"40\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Cidade: </strong></td>\n");
      out.write("                    <td><input type=\"text\" name=\"cidadecli\" value=\"\" size=\"15\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Estado: </strong></td>\n");
      out.write("                    <td><input type=\"text\" name=\"estadocli\" value=\"\" size=\"25\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Nº da Conta: </strong></td>\n");
      out.write("                    <td><input type=\"text\" name=\"ncontacli\" id=\"aux\" size=\"6\" readonly=\"readonly\" disabled=\"disabled\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td><input type=\"submit\" value=\"Enviar\" /></td></tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            document.getElementById('aux').value = Math.floor(Math.random() * 1000000);\n");
      out.write("        </script>\n");
      out.write("    </tbody>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
