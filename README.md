# Student Management API 🚀

A REST API built with Java Spring Boot, containerized with Docker and deployed on AWS EC2.

## Tech Stack
- Java 21 + Spring Boot
- Docker
- AWS EC2
- GitHub Actions (CI/CD)
- Terraform

## API Endpoints
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | /students | Get all students |
| GET | /students/{id} | Get student by id |
| POST | /students | Add new student |
| DELETE | /students/{id} | Delete student |

## How to Run Locally
```bash
docker build -t student-api .
docker run -p 8080:8080 student-api