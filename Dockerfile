FROM eclipse-temurin:17-jre-alpine
# 设置东八区
ENV TZ=Asia/Shanghai
RUN apk add --no-cache tzdata
WORKDIR /app
COPY target/*.jar app.jar
ENTRYPOINT ["java","-XX:+UseContainerSupport","-XX:MaxRAMPercentage=75.0","-jar","app.jar"]
EXPOSE 1103
