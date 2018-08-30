<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        RegisterRoutes(RouteTable.Routes);
    }

    void RegisterRoutes(RouteCollection routes)
    {
        // HOME
        routes.MapPageRoute("Home", "Home", "~/App/Views/FrontEnd/Homepage.aspx");

        // Admin
        routes.MapPageRoute("Dashboard", "cPanel/Dashboard", "~/App/Views/Admin/Dashboard.aspx");
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {

    }
</script>