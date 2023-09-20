wp plugin install redis-cache --activate
wp redis enable
wp config set WP_REDIS_HOST your_redis_host
wp config set WP_REDIS_PORT your_redis_port
# wp config set WP_REDIS_PASSWORD your_redis_password // optional

wp redis status

wp redis flush




# After configuring Redis caching, you can verify that it's working by checking your website's performance with tools like GTmetrix or Google PageSpeed Insights. 
# You should see improved load times for your WordPress site.

# By following these steps, you can configure Redis as the object cache for your WordPress site using the WP-CLI command-line tool.