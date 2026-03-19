# PolyTest Laboratory Management System - Docker Configuration

# Use official Node.js LTS image
FROM node:18-alpine AS base

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apk add --no-cache \
    python3 \
    make \
    g++ \
    sqlite

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production && npm cache clean --force

# Create app user for security
RUN addgroup -g 1001 -S nodejs
RUN adduser -S polytest -u 1001

# Copy application code
COPY --chown=polytest:nodejs . .

# Create necessary directories
RUN mkdir -p database logs uploads exports && \
    chown -R polytest:nodejs database logs uploads exports

# Switch to non-root user
USER polytest

# Expose port
EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:3000/health || exit 1

# Start application
CMD ["npm", "start"]

# Development stage
FROM base AS development
USER root
RUN npm install
USER polytest
CMD ["npm", "run", "dev"]

# Production stage  
FROM base AS production
ENV NODE_ENV=production
CMD ["npm", "start"]
