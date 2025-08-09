<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <title>JsfDemoApp · Recursos Humanos</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <!-- Estilos minimalistas embebidos -->
  <style>
    :root {
      --bg: #0f172a;        /* slate-900 */
      --panel: #111827;     /* gray-900 */
      --soft: #1f2937;      /* gray-800 */
      --muted: #9ca3af;     /* gray-400 */
      --text: #e5e7eb;      /* gray-200 */
      --brand: #22c55e;     /* emerald-500 */
      --brand-600: #16a34a;
      --accent: #60a5fa;    /* blue-400 */
      --warn: #f59e0b;      /* amber-500 */
      --danger: #ef4444;    /* red-500 */
      --radius: 16px;
      --shadow: 0 10px 30px rgba(0,0,0,.35);
    }

    *{ box-sizing:border-box; }
    body{
      margin:0; background:linear-gradient(180deg,#0b1220 0%, #0f172a 100%);
      color:var(--text); font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial;
    }
    .nav{
      position:sticky; top:0; z-index:10;
      display:flex; align-items:center; justify-content:space-between;
      padding:14px 24px; background:rgba(15,23,42,.6); backdrop-filter: blur(8px);
      border-bottom:1px solid rgba(148,163,184,.12);
    }
    .brand{
      display:flex; gap:10px; align-items:center; font-weight:700; letter-spacing:.4px;
    }
    .brand .dot{ width:10px; height:10px; border-radius:50%; background:linear-gradient(135deg, var(--brand), var(--accent)); box-shadow:0 0 20px rgba(34,197,94,.6); }
    .nav .tag{ font-size:12px; color:var(--muted); padding:4px 8px; border:1px solid rgba(148,163,184,.18); border-radius:999px; }

    .container{ max-width:1100px; margin:0 auto; padding:28px 20px 60px; }
    .hero{
      margin-top:22px; padding:28px; border-radius:var(--radius);
      background:radial-gradient(1200px 400px at 10% -20%, rgba(96,165,250,.10), transparent 40%),
                 radial-gradient(900px 350px at 100% -10%, rgba(34,197,94,.12), transparent 45%),
                 var(--panel);
      border:1px solid rgba(148,163,184,.10); box-shadow:var(--shadow);
    }
    .hero h1{ margin:0 0 8px; font-size:28px; }
    .hero p{ margin:0; color:var(--muted); }

    .grid{
      margin-top:22px; display:grid; gap:16px;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    }
    .card{
      background:linear-gradient(180deg, rgba(255,255,255,.02), rgba(255,255,255,0));
      border:1px solid rgba(148,163,184,.12);
      border-radius:var(--radius); padding:18px; min-height:140px;
      transition: transform .15s ease, border-color .15s ease;
    }
    .card:hover{ transform: translateY(-2px); border-color: rgba(148,163,184,.25); }
    .card h3{ margin:0 0 6px; font-size:18px; }
    .card p{ margin:0 0 14px; color:var(--muted); font-size:14px; min-height:34px; }

    .btn{
      display:inline-block; padding:10px 14px; border-radius:10px;
      border:1px solid rgba(148,163,184,.18); color:var(--text); text-decoration:none; cursor:pointer;
      background:linear-gradient(180deg, rgba(255,255,255,.05), rgba(255,255,255,.02));
      transition: all .15s ease;
    }
    .btn:hover{ transform: translateY(-1px); border-color: rgba(148,163,184,.35); }
    .btn.brand{ border-color: transparent; background:linear-gradient(135deg, var(--brand), var(--accent)); color:#081016; font-weight:600; }
    .btn.brand:hover{ filter: brightness(1.05); }
    .btn.ghost{ background:transparent; }

    .badges{ display:flex; gap:8px; flex-wrap:wrap; margin-top:10px; }
    .badge{ font-size:12px; padding:6px 10px; border-radius:999px; border:1px solid rgba(148,163,184,.18); color:var(--muted); background:rgba(2,6,23,.5); }

    .footer{ margin-top:28px; color:var(--muted); font-size:12px; text-align:center; }
    .kpis{ display:flex; gap:16px; margin-top:16px; flex-wrap:wrap; }
    .kpi{ flex:1 1 160px; background:rgba(2,6,23,.5); border:1px solid rgba(148,163,184,.12); border-radius:12px; padding:12px; }
    .kpi .n{ font-size:22px; font-weight:800; }
    .kpi.small{ opacity:.9; }
  </style>
</head>

<body>
  <div class="nav">
    <div class="brand">
      <span class="dot"></span>
      <span>JsfDemoApp · RR.HH.</span>
    </div>
    <span class="tag">Build & Deploy automático</span>
  </div>

  <div class="container">
    <div class="hero">
      <h1>Hola Mundo 👋 — Commit para el proyecto final</h1>
      <p>Este entorno es de <strong>Desarrollo</strong>. El pipeline compila, ejecuta pruebas, despliega a Tomcat y hace un smoke test.</p>

      <!-- KPIs de ejemplo (dummy) -->
      <div class="kpis">
        <div class="kpi"><div class="n">42</div><div class="t">Colaboradores</div></div>
        <div class="kpi"><div class="n">7</div><div class="t">Vacaciones activas</div></div>
        <div class="kpi small"><div class="n">99%</div><div class="t">Builds OK</div></div>
      </div>

      <div class="badges">
        <span class="badge">Spring 4</span>
        <span class="badge">JSF 2.x</span>
        <span class="badge">Hibernate</span>
        <span class="badge">Tomcat 9</span>
        <span class="badge">Maven</span>
      </div>
    </div>

    <h:form styleClass="grid" prependId="false">
      <!-- Productos -->
      <div class="card">
        <h3>Productos</h3>
        <p>Gestión básica de productos de ejemplo (lista y acciones CRUD).</p>
        <h:commandLink action="#{product.listSetup}" value="Ver productos" styleClass="btn brand" />
        <h:commandLink action="#{product.createSetup}" value="Nuevo producto" styleClass="btn ghost" />
      </div>

      <!-- Categorías -->
      <div class="card">
        <h3>Categorías</h3>
        <p>Explora y administra categorías para los productos.</p>
        <h:commandLink action="#{product.listSetup}" value="Ver categorías" styleClass="btn brand" />
        <h:commandLink action="#{product.createSetup}" value="Nueva categoría" styleClass="btn ghost" />
      </div>

      <!-- Reportes -->
      <div class="card">
        <h3>Reportes</h3>
        <p>Indicadores y consultas rápidas para RR.HH.</p>
        <h:commandLink action="#{product.listSetup}" value="Abrir reportes" styleClass="btn brand" />
        <h:commandLink action="#{product.listSetup}" value="Exportar" styleClass="btn ghost" />
      </div>
    </h:form>

    <div class="footer">
      © <h:outputText value="#{request.serverName}" /> ·
      Desplegado por Jenkins ·
      <h:outputText value="#{request.contextPath}" />
    </div>
  </div>
</body>
</html>
</f:view>
