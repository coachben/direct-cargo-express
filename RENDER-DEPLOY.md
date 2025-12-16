# Deploy Direct Cargo to Render.com

## 🚀 Quick Deploy (Recommended)

### Option 1: Blueprint (One-Click Deploy)

1. **Push to GitHub** (if not already):
   ```bash
   git add .
   git commit -m "Add Render configuration"
   git push origin main
   ```

2. **Deploy via Blueprint**:
   - Go to: https://dashboard.render.com/select-repo
   - Select your `coachben/direct-cargo-express` repository
   - Render will auto-detect `render.yaml`
   - Click "Apply" to create all services automatically

3. **Wait for deployment** (~5-10 minutes)
   - MySQL will start first
   - WordPress will connect to MySQL
   - Frontend will connect to WordPress

### Option 2: Manual Setup

If blueprint doesn't work, create services manually:

#### 1. Create MySQL Database

1. Click "New +" → "Private Service"
2. Select "Docker"
3. **Settings**:
   - Name: `directcargo-mysql`
   - Dockerfile Path: `./Dockerfile.mysql`
   - Add Disk: `/var/lib/mysql` (10GB)
4. **Environment Variables**:
   ```
   MYSQL_DATABASE=wordpress
   MYSQL_USER=wordpress
   MYSQL_PASSWORD=<generate-secure-password>
   MYSQL_ROOT_PASSWORD=<generate-secure-password>
   ```
5. Create Service

#### 2. Create WordPress Service

1. Click "New +" → "Web Service"
2. Select "Docker"
3. **Settings**:
   - Name: `directcargo-wordpress`
   - Dockerfile Path: `./Dockerfile.wordpress`
   - Add Disk: `/var/www/html` (10GB)
4. **Environment Variables**:
   ```
   WORDPRESS_DB_HOST=directcargo-mysql:3306
   WORDPRESS_DB_NAME=wordpress
   WORDPRESS_DB_USER=wordpress
   WORDPRESS_DB_PASSWORD=<same-as-mysql-password>
   WORDPRESS_AUTH_KEY=<generate>
   WORDPRESS_AUTH_SALT=<generate>
   WORDPRESS_LOGGED_IN_KEY=<generate>
   WORDPRESS_LOGGED_IN_SALT=<generate>
   WORDPRESS_NONCE_KEY=<generate>
   WORDPRESS_NONCE_SALT=<generate>
   WORDPRESS_SECURE_AUTH_KEY=<generate>
   WORDPRESS_SECURE_AUTH_SALT=<generate>
   ```
5. Create Service

#### 3. Create Frontend Service

1. Click "New +" → "Web Service"
2. Select "Docker"
3. **Settings**:
   - Name: `directcargo-frontend`
   - Dockerfile Path: `./frontend/Dockerfile`
   - Docker Context: `./frontend`
4. **Environment Variables**:
   ```
   NEXT_PUBLIC_WORDPRESS_API_URL=https://<your-wordpress-url>.onrender.com/graphql
   ```
5. Create Service

## 📊 Service Details

| Service | Type | Port | Disk | Cost |
|---------|------|------|------|------|
| MySQL | Private | 3306 | 10GB | $7/mo |
| WordPress | Web | 80 | 10GB | $7/mo |
| Frontend | Web | 3000 | - | $7/mo |

**Total**: ~$21/month (or use free tier for testing)

## 🔗 URLs After Deployment

- **WordPress**: `https://directcargo-wordpress.onrender.com`
- **Frontend**: `https://directcargo-frontend.onrender.com`
- **MySQL**: Internal only (private service)

## ⚙️ Post-Deployment

1. **Setup WordPress**:
   - Visit your WordPress URL
   - Complete the 5-minute installation
   - Install required plugins (WPGraphQL, ACF, etc.)

2. **Update Frontend Environment**:
   - Go to Frontend service settings
   - Update `NEXT_PUBLIC_WORDPRESS_API_URL` with actual WordPress URL
   - Trigger manual deploy

3. **Configure WordPress for Headless**:
   - Enable WPGraphQL
   - Set permalinks to "Post name"
   - Configure CORS if needed

## 🐛 Troubleshooting

### MySQL Connection Issues
- Check that WordPress `WORDPRESS_DB_HOST` uses internal hostname: `directcargo-mysql:3306`
- Verify passwords match between MySQL and WordPress

### Frontend Can't Connect
- Ensure WordPress URL in frontend env vars is correct
- Check WordPress GraphQL endpoint: `/graphql`
- Verify CORS settings in WordPress

### Slow First Deploy
- Render free tier spins down after inactivity
- First request takes ~30 seconds to wake up
- Upgrade to paid tier for always-on

## 💰 Cost Optimization

**Free Tier** (for testing):
- Use Render's free tier (750 hours/month)
- Services spin down after 15 min inactivity
- Good for demo/staging

**Production** ($21/month):
- All services always-on
- Better performance
- 10GB storage each

## 🔄 Updates

```bash
# Make changes locally
git add .
git commit -m "Update"
git push

# Render auto-deploys from main branch
```

## 📞 Support

Render has excellent docs: https://render.com/docs
