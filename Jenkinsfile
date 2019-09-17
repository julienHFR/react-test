node {
  try {
    stage('Checkout') {
      checkout scm
    }
    stage('Deploy'){
      if(env.BRANCH_NAME == 'master'){
        //sh 'npm i'
        //sh 'npm run build'
        //sh 'rm -Rf /usr/share/nginx/html/*'
        //sh 'cp -R build/* /usr/share/nginx/html/'
        sh 'docker build -t react-app .'
      }
    }
  }
  catch (err) {
    throw err
  }
}
