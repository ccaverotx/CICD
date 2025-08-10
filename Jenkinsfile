pipeline {
  agent any
  tools { maven "MVN_LTS" }

  environment {
    APP_NAME   = 'SGRRHH'
    TOMCAT_DEV = 'C:\\Users\\ccaverotx\\Downloads\\apache-tomcat-9.0.107-windows-x64\\apache-tomcat-9.0.107'
    WAR_SRC    = 'target\\JsfDemoApp-1.0-SNAPSHOT.war'
    WAR_DST    = "${TOMCAT_DEV}\\webapps\\${APP_NAME}.war"
    BASE_URL   = 'http://localhost:8181'
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/ccaverotx/CICD.git'
      }
    }

    stage('Build (local sanity)') {
      steps { bat 'mvn -q -DskipTests clean package' }
    }

    stage('Deploy to DEV (Tomcat9)') {
      steps {
        bat """
          echo === Deploying WAR to Tomcat DEV ===
          copy ${WAR_SRC} "${WAR_DST}" /Y
        """
      }
    }

    stage('Smoke Test') {
      steps {
        bat """
          powershell -Command "$i=0; do { try { (Invoke-WebRequest -UseBasicParsing ${BASE_URL}/${APP_NAME}/).StatusCode; exit 0 } catch { Start-Sleep -s 3; $i++ } } while ($i -lt 10); exit 1"
        """
      }
    }
  }

  post {
    success { echo 'CD OK: Despliegue a DEV exitoso.' }
    failure { echo 'CD FALLÓ: revisar logs/console.' }
  }
}
