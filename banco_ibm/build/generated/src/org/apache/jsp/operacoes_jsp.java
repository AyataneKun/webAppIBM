package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class operacoes_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n");
      out.write("        <title>Operações Monetárias - Banco Teste IBM</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table border=\"0\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th colspan=\"2\">Operações Monetárias</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("        </table>\n");
      out.write("        <form action=\"opSucess.jsp\" method=\"POST\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Descrição: </strong></td>\n");
      out.write("                    <td><span style=\"font-size:smaller; font-style:italic;\">Bem vindo a página de operações monetárias do Banco Teste IBM, aqui você\n");
      out.write("                            poderá realizar operações como pagamentos e depósitos sem precisar comparecer pessoalmente ao banco. Por favor, preencha \n");
      out.write("                            os campos com cuidado e verifique cuidadosamente todas as informações inseridas aqui.</span></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Nº da conta: </strong></td>\n");
      out.write("                    <td><input type=\"number\" name=\"contau\" value=\"\" maxlength=\"6\" size=\"6\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Nº da conta do favorecido: </strong></td>\n");
      out.write("                    <td><input type=\"number\" name=\"contaf\" value=\"\" maxlength=\"6\" size=\"6\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Data da transação: </strong></td>\n");
      out.write("                    <td><input type=\"date\" name=\"dataop\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Tipo da transação: </strong></td>\n");
      out.write("                    <td><input type=\"radio\" name=\"tipoop\" value=\"1\" checked=\"checked\" /> 1- Pagamentos \n");
      out.write("                        <input type=\"radio\" name=\"tipoop\" value=\"2\" /> 2- Depositos </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><strong>Valor: </strong></td>\n");
      out.write("                    <td>R$<input type=\"number\" name=\"valor\" value=\"\" size=\"25\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                ");
      out.write("\n");
      out.write("                <tr><td><input type=\"submit\" value=\"Enviar\" /></td></tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
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
