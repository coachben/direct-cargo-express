FROM wordpress:latest

# Install dependencies and tools
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Fix Apache MPM Conflict
# Disable conflicting modules and enable prefork
RUN a2dismod mpm_event && \
    a2dismod mpm_worker && \
    a2enmod mpm_prefork

# Enable other recommended modules
RUN a2enmod rewrite headers

# Copy local files to the container
COPY . /var/www/html/

# Fix permissions
RUN chown -R www-data:www-data /var/www/html

# Set working directory
WORKDIR /var/www/html

# Expose port
EXPOSE 80
