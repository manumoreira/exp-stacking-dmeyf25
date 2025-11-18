1. Conectar a la VM
bash
ssh tu-usuario@IP-DE-LA-VM
2. Configurar Git (primera vez)
bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu-email@dominio.com"
3. Generar SSH Key
bash
ssh-keygen -t ed25519 -C "tu-email@dominio.com"
Presiona Enter para todas las preguntas (ruta default, sin passphrase)

Resultado: Se crean 2 archivos en ~/.ssh/

id_ed25519 (clave privada - NO compartir)

id_ed25519.pub (clave pública - SÍ compartir)

4. Copiar Clave Pública
bash
cat ~/.ssh/id_ed25519.pub
Selecciona y copia todo el texto que aparece

Incluye ssh-ed25519 AAA... tu-email@dominio.com

5. Agregar Clave en GitHub
Ve a GitHub.com → Settings → SSH and GPG keys

Click "New SSH key"

Pega la clave pública copiada

Título: "Google Cloud VM"

Click "Add SSH key"

6. Clonar Repositorio
bash
git clone git@github.com:usuario/repositorio.git
cd repositorio
✅ Verificar Configuración
bash
# Probar conexión SSH
ssh -T git@github.com
# Deberías ver: "Hi usuario! You've successfully authenticated..."

# Verificar configuración
git config --list
🔄 Flujo Normal de Trabajo
bash
# Actualizar repo
git pull origin main

# Crear rama
git checkout -b mi-feature

# Trabajar, luego:
git add .
git commit -m "Mi feature"
git push -u origin mi-feature
