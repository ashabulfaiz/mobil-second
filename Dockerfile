# Menggunakan image official Nginx untuk server web
FROM nginx:alpine

# Menyalin file HTML, CSS, dan JavaScript ke direktori Nginx
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./style.css /usr/share/nginx/html/style.css
COPY ./script.js /usr/share/nginx/html/script.js

# Menyalin folder images jika ada gambar
COPY ./images /usr/share/nginx/html/images

# Expose port 80 untuk akses web
EXPOSE 80

# Menjalankan Nginx di port 80
CMD ["nginx", "-g", "daemon off;"]
