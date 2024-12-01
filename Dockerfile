# Базовий образ
FROM node:18-slim


# Встановлюємо робочу директорію в контейнері
WORKDIR /usr/src/app

# Копіюємо файли package.json та package-lock.json
COPY package*.json ./

# Встановлюємо залежності
RUN npm install

# Копіюємо всі файли проекту
COPY . .

# Виставляємо порт
EXPOSE 3000

# Запускаємо додаток
CMD ["npm", "run", "devStart"]
