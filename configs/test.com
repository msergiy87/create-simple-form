server {
	listen 80;
	listen [::]:80;

	server_name test.com;

	root /var/www/test.com/lastbuild;
	index index.html;

	location / {
		try_files $uri $uri/ =404;
	}
}
