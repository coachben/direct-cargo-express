# Direct Cargo - Docker Deployment

## Quick Start (Local Testing)

```bash
# 1. Start all services
docker-compose up -d

# 2. Access:
# - WordPress: http://localhost:8080
# - Frontend: http://localhost:3000
# - MySQL: localhost:3306 (internal only)
```

## Production Deployment Options

### Option 1: DigitalOcean App Platform (Recommended - Easiest)

1. Push code to GitHub
2. Go to DigitalOcean App Platform
3. Create new app from GitHub repo
4. Add 3 components:
   - **Database**: MySQL (managed)
   - **Service**: WordPress (Dockerfile at root)
   - **Service**: Frontend (Dockerfile at /frontend)
4. Set environment variables in UI
5. Deploy

**Cost**: ~$12-20/month

### Option 2: Render.com (Railway Alternative)

1. Push to GitHub
2. Create new Web Service for WordPress
3. Create new Web Service for Frontend  
4. Create PostgreSQL database (or use external MySQL)
5. Connect via environment variables

**Cost**: Free tier available, $7+/month for production

### Option 3: Any VPS with Docker (Full Control)

```bash
# On your VPS (Ubuntu/Debian):
sudo apt update
sudo apt install docker.io docker-compose -y

# Clone your repo
git clone https://github.com/coachben/direct-cargo-express.git
cd direct-cargo-express

# Create .env file
cat > .env << EOF
MYSQL_PASSWORD=your_secure_password
MYSQL_ROOT_PASSWORD=your_root_password
WORDPRESS_URL=https://yourdomain.com
EOF

# Start services
docker-compose up -d

# Setup nginx reverse proxy (for SSL)
sudo apt install nginx certbot python3-certbot-nginx -y
```

**Cost**: $5-12/month (DigitalOcean, Linode, Vultr)

## Environment Variables

Create `.env` file:

```env
# MySQL
MYSQL_PASSWORD=your_secure_password
MYSQL_ROOT_PASSWORD=your_root_password

# WordPress URL (for frontend)
WORDPRESS_URL=https://your-wordpress-domain.com

# WordPress Salts (already set in docker-compose, change for production)
WORDPRESS_AUTH_KEY=...
WORDPRESS_AUTH_SALT=...
# ... etc
```

## Ports

- **WordPress**: 8080 → 80 (internal)
- **Frontend**: 3000 → 3000
- **MySQL**: 3306 (internal only, not exposed)

## Commands

```bash
# Start
docker-compose up -d

# Stop
docker-compose down

# View logs
docker-compose logs -f

# Restart a service
docker-compose restart wordpress

# Rebuild after code changes
docker-compose up -d --build
```

## My Recommendation

**Go with DigitalOcean App Platform** because:
- ✅ Managed MySQL (no crashes)
- ✅ Auto-scaling
- ✅ SSL certificates automatic
- ✅ GitHub integration
- ✅ Can deploy in 10 minutes
- ✅ Professional support

Just push your code to GitHub and connect it!
