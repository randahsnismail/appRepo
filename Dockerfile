# Step 1: Use the official Node.js image as a base
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy your package.json and package-lock.json to the container
COPY package*.json ./

# Step 4: Install the app dependencies
RUN npm install

# Step 5: Copy the rest of your application code to the container
COPY . .


# Step 6: Expose the port that your app will run on
EXPOSE 3000

# Step 7: Define the command to run your app
CMD ["node", "randa-app.js"]
