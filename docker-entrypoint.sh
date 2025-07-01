# #!/bin/sh

# flask db upgrade

# exec gunicorn --bind 0.0.0.0:80 "app:create_app()"


#!/bin/sh

flask db upgrade

exec gunicorn --bind 0.0.0.0:80 --factory app:create_app
