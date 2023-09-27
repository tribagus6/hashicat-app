#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World!</h2></center>
  Welcome to Tri Bagus Pamungkas's app. Replace this text with your own.
cd /root/terraform-cloud

# 1. Create a policy set from VCS.
# 2. Enable automated policy as code
# 3. Apply to hashicat-aws workspace
terraform apply -auto-approve
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
