# 🤝 Contributing to PolyTest Laboratory Management System

We love your input! We want to make contributing to PolyTest Lab as easy and transparent as possible, whether it's:

- Reporting a bug
- Discussing the current state of the code  
- Submitting a fix
- Proposing new features
- Becoming a maintainer

## 🚀 **Quick Start for Contributors**

### **Development Setup**

```bash
# Fork the repository on GitHub
# Clone your fork
git clone https://github.com/YOUR_USERNAME/polytest-lab-system.git
cd polytest-lab-system

# Add upstream remote
git remote add upstream https://github.com/ORIGINAL_OWNER/polytest-lab-system.git

# Install dependencies
npm install

# Initialize database
npm run init-db

# Add sample data
npm run seed-db

# Start development server
npm run dev
```

### **Development Workflow**

1. **Create a feature branch** from `main`:
   ```bash
   git checkout main
   git pull upstream main
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes** following our coding standards

3. **Test your changes**:
   ```bash
   npm test
   npm run lint
   ```

4. **Commit with conventional commit format**:
   ```bash
   git commit -m "✨ feat: add new laboratory workflow feature"
   ```

5. **Push and create a Pull Request**:
   ```bash
   git push origin feature/your-feature-name
   ```

---

## 📋 **Development Guidelines**

### **Code Style**

We use ESLint and Prettier for consistent code formatting:

```bash
# Check code style
npm run lint

# Fix code style issues
npm run lint:fix

# Format code
npm run format
```

**Code Style Rules:**
- Use 2 spaces for indentation
- Use semicolons
- Use single quotes for strings
- Use camelCase for variables and functions
- Use PascalCase for classes and components
- Maximum line length: 100 characters

### **Commit Message Format**

We follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation only changes
- `style`: Changes that do not affect the meaning of the code
- `refactor`: Code change that neither fixes a bug nor adds a feature
- `perf`: Code change that improves performance
- `test`: Adding missing tests
- `chore`: Changes to the build process or auxiliary tools

**Examples:**
```bash
git commit -m "✨ feat: add warehouse inspection workflow"
git commit -m "🐛 fix: resolve authentication token expiration issue"
git commit -m "📚 docs: update API documentation for orders endpoint"
git commit -m "♻️  refactor: improve database query performance"
git commit -m "🧪 test: add unit tests for authentication middleware"
```

### **Branch Naming**

- `feature/description` - New features
- `fix/description` - Bug fixes
- `docs/description` - Documentation updates
- `refactor/description` - Code refactoring
- `test/description` - Adding tests

---

## 🧪 **Testing**

### **Running Tests**

```bash
# Run all tests
npm test

# Run tests in watch mode
npm run test:watch

# Run tests with coverage
npm run test:coverage

# Run specific test file
npm test -- auth.test.js
```

### **Writing Tests**

We use Jest for testing. Please add tests for:
- New features
- Bug fixes
- API endpoints
- Utility functions

**Test Structure:**
```javascript
// tests/auth.test.js
const request = require('supertest');
const app = require('../server');

describe('Authentication', () => {
  describe('POST /api/auth/login', () => {
    it('should login with valid credentials', async () => {
      const response = await request(app)
        .post('/api/auth/login')
        .send({
          username: 'admin',
          password: 'polytest2024'
        });

      expect(response.status).toBe(200);
      expect(response.body).toHaveProperty('token');
    });

    it('should reject invalid credentials', async () => {
      const response = await request(app)
        .post('/api/auth/login')
        .send({
          username: 'admin',
          password: 'wrong-password'
        });

      expect(response.status).toBe(401);
    });
  });
});
```

---

## 🐛 **Bug Reports**

Great Bug Reports tend to have:

- A quick summary and/or background
- Steps to reproduce
  - Be specific!
  - Give sample code if you can
- What you expected would happen
- What actually happens
- Notes (possibly including why you think this might be happening, or stuff you tried that didn't work)

**Bug Report Template:**
```markdown
## Bug Description
A clear and concise description of what the bug is.

## Steps to Reproduce
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

## Expected Behavior
A clear and concise description of what you expected to happen.

## Actual Behavior
A clear and concise description of what actually happened.

## Screenshots
If applicable, add screenshots to help explain your problem.

## Environment
- OS: [e.g. Windows 10, macOS 12.1, Ubuntu 20.04]
- Browser: [e.g. Chrome 98, Firefox 97, Safari 15]
- Node.js version: [e.g. 16.14.0]
- App version: [e.g. 1.0.0]

## Additional Context
Add any other context about the problem here.
```

---

## 💡 **Feature Requests**

We use GitHub Discussions for feature requests. Before creating a new discussion:

1. Check if the feature already exists
2. Search existing discussions
3. Provide a clear use case
4. Explain why this feature would be useful

**Feature Request Template:**
```markdown
## Feature Summary
A brief description of the feature.

## Problem Statement
What problem does this feature solve?

## Proposed Solution
Describe your proposed solution.

## Alternatives Considered
Describe alternative solutions you've considered.

## Use Cases
Provide specific use cases for this feature.

## Additional Context
Add any other context or screenshots about the feature request.
```

---

## 🔍 **Code Review Process**

### **Pull Request Guidelines**

1. **Fill out the PR template** completely
2. **Link related issues** using keywords (fixes #123)
3. **Add screenshots** for UI changes
4. **Update documentation** if needed
5. **Ensure tests pass** and coverage is maintained

### **Review Checklist**

**For Reviewers:**
- [ ] Code follows style guidelines
- [ ] Self-review has been performed
- [ ] Code is well-documented
- [ ] Tests have been added/updated
- [ ] No breaking changes (or properly documented)
- [ ] Performance impact considered
- [ ] Security implications reviewed

**For Authors:**
- [ ] PR description is clear and complete
- [ ] All tests pass
- [ ] Documentation updated
- [ ] Screenshots added (if UI changes)
- [ ] Breaking changes documented
- [ ] Ready for review

---

## 📦 **Release Process**

### **Versioning**

We use [Semantic Versioning](https://semver.org/):
- `MAJOR.MINOR.PATCH` (e.g., 1.2.3)
- MAJOR: Breaking changes
- MINOR: New features (backward compatible)
- PATCH: Bug fixes (backward compatible)

### **Release Workflow**

1. **Create release branch** from `main`:
   ```bash
   git checkout main
   git pull origin main
   git checkout -b release/v1.2.0
   ```

2. **Update version** in `package.json`:
   ```bash
   npm version minor  # or major/patch
   ```

3. **Update CHANGELOG.md** with new features and fixes

4. **Create release PR** to `main`

5. **After merge, create GitHub release** with:
   - Release notes
   - Binary attachments (if applicable)
   - Docker image tags

---

## 🏷️ **Labeling System**

We use labels to categorize issues and PRs:

**Type Labels:**
- `bug` - Something isn't working
- `feature` - New feature or request
- `documentation` - Improvements or additions to documentation
- `enhancement` - Improvement to existing feature
- `question` - Further information is requested

**Priority Labels:**
- `critical` - Critical priority
- `high` - High priority  
- `medium` - Medium priority
- `low` - Low priority

**Area Labels:**
- `backend` - Backend/API related
- `frontend` - Frontend/UI related
- `database` - Database related
- `security` - Security related
- `performance` - Performance related

**Status Labels:**
- `needs-review` - Needs review from maintainers
- `work-in-progress` - Work in progress
- `blocked` - Blocked by other work
- `help-wanted` - Extra attention is needed

---

## 🎯 **Areas for Contribution**

We welcome contributions in these areas:

### **🔧 High Priority**
- Bug fixes
- Performance improvements  
- Security enhancements
- Test coverage improvements
- Documentation updates

### **🚀 Medium Priority**
- New API endpoints
- Frontend UI improvements
- Database optimization
- Error handling improvements
- Logging enhancements

### **💡 Low Priority**
- Feature enhancements
- Code refactoring
- Developer tooling
- CI/CD improvements
- Monitoring additions

### **🌟 Good First Issues**

Look for issues labeled `good-first-issue` if you're new to the project. These are typically:
- Documentation improvements
- Simple bug fixes
- Test additions
- Code cleanup tasks

---

## 📞 **Getting Help**

### **Communication Channels**

- 💬 **GitHub Discussions** - General questions and feature discussions
- 🐛 **GitHub Issues** - Bug reports and specific problems
- 📧 **Email** - security@polytest-lab.com (security issues only)
- 🗣️ **Community Chat** - [Discord/Slack link] (if available)

### **Mentorship**

New contributors can:
- Ask for help in GitHub discussions
- Request code review guidance
- Get mentorship from maintainers
- Join pair programming sessions

---

## 👨‍💼 **Maintainer Responsibilities**

**Core Maintainers:**
- Review and merge pull requests
- Triage issues and discussions
- Maintain code quality standards
- Release management
- Community support

**Expectations:**
- Respond to issues within 48 hours
- Review PRs within 1 week
- Maintain respectful communication
- Help mentor new contributors

---

## 📜 **Code of Conduct**

### **Our Pledge**

We pledge to make participation in our project a harassment-free experience for everyone, regardless of age, body size, disability, ethnicity, gender identity and expression, level of experience, education, socio-economic status, nationality, personal appearance, race, religion, or sexual identity and orientation.

### **Our Standards**

**Positive behavior includes:**
- Using welcoming and inclusive language
- Being respectful of differing viewpoints
- Gracefully accepting constructive criticism
- Focusing on what is best for the community
- Showing empathy towards other community members

**Unacceptable behavior includes:**
- Harassment, trolling, or inflammatory comments
- Personal or political attacks
- Public or private harassment
- Publishing others' private information without permission
- Other conduct inappropriate in a professional setting

### **Enforcement**

Report violations to security@polytest-lab.com. All complaints will be reviewed and investigated promptly and fairly.

---

## 🙏 **Recognition**

Contributors will be recognized in:
- CONTRIBUTORS.md file
- Release notes
- Project README
- Annual contributor highlights

**Types of Contributions Recognized:**
- Code contributions
- Documentation improvements
- Bug reports
- Feature suggestions
- Community support
- Testing and QA
- Design contributions

---

## 📚 **Resources**

### **Documentation**
- [API Documentation](API_DOCUMENTATION.md)
- [Database Schema](DATABASE_SCHEMA.md)
- [Deployment Guide](DEPLOYMENT.md)
- [Security Guidelines](SECURITY.md)

### **Tools**
- [VSCode Extensions](.vscode/extensions.json)
- [Postman Collection](docs/polytest-lab.postman_collection.json)
- [Database Diagram](docs/database-schema.png)

### **Learning Resources**
- [Node.js Documentation](https://nodejs.org/docs/)
- [Express.js Guide](https://expressjs.com/guide/)
- [SQLite Tutorial](https://www.sqlitetutorial.net/)
- [Jest Testing Framework](https://jestjs.io/docs/getting-started)

---

**Thank you for contributing to PolyTest Laboratory Management System! 🎉**

*By participating in this project, you agree to abide by our code of conduct and licensing terms.*
