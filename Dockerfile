FROM ghcr.io/open-webui/open-webui:git-49a928d

# Optional: Replace favicon icons
# COPY favicon.svg /app/build/static/favicon.svg
# COPY favicon.png /app/build/static/favicon.png
# COPY favicon.ico /app/build/static/favicon.ico

# Copy your custom CSS file
COPY custom.css /app/build/static/custom.css

RUN pip install --no-cache-dir skyfield tzdata flatlib timezonefinder && \
    python -c "import timezonefinder; timezonefinder.TimezoneFinder()"  # pre-downloads geodata