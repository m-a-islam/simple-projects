# 1. Use an official PHP image.
# The '-cli' version is lightweight and perfect for running scripts.
FROM php:8.2-cli

# 2. Set the working directory inside the container.
WORKDIR /app

# 3. Copy your PHP script from your host machine into the container.
COPY src/index.php .

# 4. The command to run when the container starts.
# This will execute the PHP script using the PHP interpreter.
ENTRYPOINT [ "php" ]
CMD [ "index.php" ]