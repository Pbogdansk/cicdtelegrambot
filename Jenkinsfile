pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      args '-u root:sudo'
    }
  }
  stages {
    stage('Build and install dependencies') {
      steps {
        script {
          sh """
            python -m pip install --upgrade pip &&
            pip install pytest
            """
        }
      }
    }
    stage('Test with pytest') {
      steps {
        script {
          sh """
           cd ./tests &&
           pytest -m no_req
           """
        }
      }
    }
  }
}
