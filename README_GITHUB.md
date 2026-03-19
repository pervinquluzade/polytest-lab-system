# 🏭 PolyTest Laboratory Management System

**Professional laboratory management system for mechanical and physical testing of polymer materials**

[![Node.js](https://img.shields.io/badge/Node.js-16+-green.svg)](https://nodejs.org/)
[![SQLite](https://img.shields.io/badge/Database-SQLite-blue.svg)](https://sqlite.org/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-brightgreen.svg)]()

## 🎯 **Overview**

PolyTest Lab Management System is a comprehensive solution for managing laboratory operations including:
- **Laboratory Orders** - Customer test requests and sample management
- **Warehouse Inspections** - Multi-phase quality control workflow  
- **Test Management** - Direct laboratory test requests
- **Technical Control** - Professional notes and test requirements
- **Control Reports** - Automated report generation with pass/fail analysis
- **Admin Panel** - User management and system configuration

---

## 🖥️ **Live Demo**

### **Frontend Demo:**
- **Desktop Version:** [View Desktop Interface](https://your-demo-site.com/desktop)
- **Mobile Version:** [View Mobile Interface](https://your-demo-site.com/mobile)

### **Test Accounts:**
```
Admin:      admin / polytest2024
Technician: technician1 / tech2024
Lab Worker: labworker1 / lab2024
Customer:   user1 / user2024
```

---

## 🚀 **Quick Start**

### **Prerequisites**
- Node.js 16+
- npm or yarn
- Git

### **Installation**

```bash
# Clone repository
git clone https://github.com/YOUR_USERNAME/polytest-lab-system.git
cd polytest-lab-system

# Quick setup (recommended)
chmod +x setup.sh
./setup.sh

# OR Manual setup
npm install
npm run init-db
npm run seed-db  # Optional: adds sample data
npm start
```

### **Access the System**
- **API Server:** http://localhost:3000
- **Frontend:** Open `mech_lab_desktop.html` in browser
- **API Documentation:** http://localhost:3000/api
- **Health Check:** http://localhost:3000/health

---

## 🏗️ **Project Structure**

```
polytest-lab-system/
├── 📁 backend/                    # Node.js API Server
│   ├── server.js                  # Main Express server
│   ├── package.json              # Dependencies & scripts
│   ├── config/
│   │   └── database.js           # SQLite database config
│   ├── middleware/
│   │   ├── auth.js               # JWT authentication
│   │   └── errorHandler.js       # Error handling
│   ├── routes/
│   │   ├── auth.js               # Authentication API
│   │   ├── orders.js             # Laboratory orders API
│   │   ├── warehouse.js          # Warehouse inspection API
│   │   ├── test-requests.js      # Test requests API
│   │   ├── admin.js              # Admin panel API
│   │   ├── dashboard.js          # Dashboard data API
│   │   └── upload.js             # File upload API
│   └── scripts/
│       ├── init-database.js      # Database initialization
│       └── seed-database.js      # Sample data creation
│
├── 📁 frontend/                   # HTML/CSS/JS Frontend
│   ├── mech_lab_desktop.html     # Desktop interface
│   ├── mech_lab.html             # Mobile interface
│   └── assets/                   # CSS, JS, images
│
├── 📁 database/                   # SQLite database
│   └── polytest_lab.db           # Database file (created on init)
│
├── 📁 uploads/                    # User uploaded files
├── 📁 logs/                      # Application logs
├── setup.sh                     # Automated setup script
└── README.md                     # This file
```

---

## 🔧 **Features**

### **🎛️ Core System**
- ✅ **Multi-user Authentication** - JWT-based with role management
- ✅ **Role-based Access Control** - Admin, Technician, Lab Worker, User
- ✅ **RESTful API** - Complete backend with 40+ endpoints
- ✅ **Real-time Dashboard** - Live statistics and workflow status
- ✅ **Responsive Design** - Works on desktop and mobile devices

### **📋 Laboratory Orders**
- ✅ **Customer Management** - Complete customer and company information
- ✅ **Sample Tracking** - Detailed sample specifications and batch tracking
- ✅ **Test Parameters** - Configurable test standards and requirements
- ✅ **Status Workflow** - Pending → Accepted → Testing → Done
- ✅ **Results Management** - Test result input with pass/fail analysis

### **📦 Warehouse Inspection**
- ✅ **Multi-phase Workflow** - Warehouse → Technical Control → Testing → Report → Done
- ✅ **Technical Control** - Professional notes and test requirement selection
- ✅ **Control Reports** - Automated report generation with recommendations
- ✅ **Problem Tracking** - Detailed problem description and resolution

### **🧪 Test Management**
- ✅ **Direct Test Requests** - Bypass normal order workflow
- ✅ **Test Standards** - ISO, ASTM, EN standard support
- ✅ **Priority Handling** - Normal, Urgent, Critical priority levels
- ✅ **Batch Processing** - Multiple test management

### **👨‍💼 Admin Panel**
- ✅ **User Management** - Create, edit, delete users
- ✅ **System Configuration** - Laboratory settings and parameters
- ✅ **Audit Logging** - Complete change tracking
- ✅ **Statistics** - Comprehensive system analytics

### **📁 File Management**
- ✅ **Document Upload** - PDF, Word, Excel, images
- ✅ **File Association** - Link files to orders, warehouse, tests
- ✅ **Secure Storage** - File type validation and size limits
- ✅ **Download Management** - Secure file access control

---

## 🔌 **API Documentation**

### **Authentication**
```bash
POST /api/auth/login           # User login
POST /api/auth/register        # Create account
GET  /api/auth/me             # Current user info
POST /api/auth/change-password # Change password
```

### **Laboratory Orders**
```bash
GET    /api/orders              # List orders
POST   /api/orders              # Create order
PUT    /api/orders/:id/status   # Update status
PUT    /api/orders/:id/test-results # Submit results
DELETE /api/orders/:id          # Delete order
```

### **Warehouse Management**
```bash
GET  /api/warehouse                    # List requests
POST /api/warehouse                    # Create request
POST /api/warehouse/:id/technical-control # Add technical notes
POST /api/warehouse/:id/control-report    # Create control report
PUT  /api/warehouse/:id/status         # Update status
```

### **Admin Panel**
```bash
GET    /api/admin/users          # Manage users
GET    /api/admin/stats          # System statistics
GET    /api/admin/audit-log      # View audit log
PUT    /api/admin/system-config  # Update configuration
```

**[📚 Full API Documentation](API_DOCUMENTATION.md)**

---

## 🗄️ **Database Schema**

### **Core Tables**
- **users** - Authentication and user management
- **orders** - Laboratory test orders
- **warehouse_requests** - Warehouse inspection workflow  
- **test_requests** - Direct laboratory requests
- **file_uploads** - Document management
- **audit_log** - Change tracking

### **Test Management**
- **order_tests** - Order test parameters
- **warehouse_tests** - Technical control tests
- **test_request_tests** - Direct request tests

### **Configuration**
- **system_config** - Application settings

---

## 🔐 **Security Features**

### **Authentication & Authorization**
- ✅ **JWT Tokens** - 24-hour expiration with refresh capability
- ✅ **bcrypt Password Hashing** - 12 salt rounds for security
- ✅ **Role-based Access Control** - Granular permission system
- ✅ **Account Management** - User activation/deactivation

### **API Security**
- ✅ **Helmet.js Security Headers** - XSS, CSRF protection
- ✅ **Rate Limiting** - 100 requests per 15 minutes
- ✅ **Input Validation** - Joi schema validation
- ✅ **SQL Injection Protection** - Parameterized queries

### **File Security**
- ✅ **File Type Restrictions** - Whitelist-based validation
- ✅ **Size Limits** - 10MB maximum per file
- ✅ **Secure Filename Generation** - UUID-based naming
- ✅ **Access Control** - User-based file permissions

---

## 🧪 **Testing**

### **Backend Testing**
```bash
# Health check
curl http://localhost:3000/health

# Login test
curl -X POST http://localhost:3000/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"username":"admin","password":"polytest2024"}'

# Get orders (requires auth token)
curl -X GET http://localhost:3000/api/orders \
  -H "Authorization: Bearer YOUR_TOKEN"
```

### **Frontend Testing**
1. Open `mech_lab_desktop.html` in browser
2. Login with admin credentials
3. Test all workflows:
   - Create laboratory order
   - Process warehouse inspection
   - Generate control report
   - Manage users (admin only)

---

## 📊 **Workflow Examples**

### **Laboratory Order Workflow**
```
Customer Request → Laboratory Review → Testing → Results
    pending     →     accepted      →  testing → done
                           ↓
                       rejected
```

### **Warehouse Inspection Workflow**  
```
Warehouse → Technical Control → Laboratory → Control Report → Complete
 warehouse →     control      →   testing  →    report     →   done
```

### **Test Request Workflow**
```
Requester → Laboratory → Testing → Results
 pending  →  accepted  →  testing → done
               ↓
           rejected
```

---

## 🚢 **Deployment**

### **Development**
```bash
npm run dev          # Start development server
npm run init-db      # Initialize database
npm run seed-db      # Add sample data
```

### **Production**
```bash
# Environment setup
export NODE_ENV=production
export JWT_SECRET=your-production-secret-key

# Install and start
npm ci --only=production
npm run init-db
npm start

# OR with PM2
npm install -g pm2
pm2 start ecosystem.config.js --env production
```

### **Docker Deployment**
```bash
# Build Docker image
docker build -t polytest-lab-api .

# Run container
docker run -p 3000:3000 -v $(pwd)/database:/app/database polytest-lab-api
```

---

## 🔮 **Roadmap**

### **Version 1.1** (Next Release)
- [ ] PDF Report Generation
- [ ] Email Notifications
- [ ] Advanced Search & Filtering
- [ ] Export to Excel
- [ ] API Rate Limiting per User

### **Version 1.2** (Future)
- [ ] Multi-language Support (English/Turkish)
- [ ] Advanced Analytics Dashboard
- [ ] Integration with Laboratory Equipment
- [ ] Mobile App (React Native)
- [ ] Barcode/QR Code Support

### **Version 2.0** (Long-term)
- [ ] Multi-laboratory Support
- [ ] Cloud Storage Integration
- [ ] Advanced Reporting Engine
- [ ] Machine Learning Analytics
- [ ] Enterprise SSO Integration

---

## 🤝 **Contributing**

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

### **Development Setup**
```bash
# Fork the repository
# Clone your fork
git clone https://github.com/YOUR_USERNAME/polytest-lab-system.git

# Create feature branch
git checkout -b feature/new-feature

# Make changes and commit
git commit -m "✨ Add new feature"

# Push and create pull request
git push origin feature/new-feature
```

### **Code Style**
- Use ESLint configuration
- Follow conventional commit messages
- Add tests for new features
- Update documentation

---

## 📄 **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 📞 **Support**

### **Documentation**
- 📖 [API Documentation](API_DOCUMENTATION.md)
- 🎬 [Video Tutorials](https://youtube.com/playlist/polytest-tutorials)
- 💬 [Community Forum](https://forum.polytest-lab.com)

### **Contact**
- 📧 **Email:** support@polytest-lab.com
- 🐛 **Bug Reports:** [GitHub Issues](https://github.com/YOUR_USERNAME/polytest-lab-system/issues)
- 💡 **Feature Requests:** [GitHub Discussions](https://github.com/YOUR_USERNAME/polytest-lab-system/discussions)
- 🌐 **Website:** https://polytest-lab.com

---

## 🏆 **Acknowledgments**

- Built with ❤️ for the polymer testing industry
- Inspired by modern laboratory management needs
- Special thanks to beta testers and contributors

---

<div align="center">

**⭐ Star this repository if you find it helpful! ⭐**

[🚀 **Get Started**](#-quick-start) | [📚 **Documentation**](API_DOCUMENTATION.md) | [🐛 **Report Bug**](https://github.com/YOUR_USERNAME/polytest-lab-system/issues) | [💡 **Request Feature**](https://github.com/YOUR_USERNAME/polytest-lab-system/discussions)

Made with 💻 and ☕ for the laboratory community

</div>
