# Use the official code-server image (VSCode in the browser)
FROM codercom/code-server:latest

# Set environment variables (optional)
ENV PASSWORD=yourpassword
ENV TZ=UTC

# Expose the default code-server port
EXPOSE 8080

# (Optional) Mount workspace volume at /home/coder/project
VOLUME ["/home/coder/project"]

# Start code-server
CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "/home/coder/project"]