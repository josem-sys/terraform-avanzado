# **Proceso de Rebase**  
1. Con `echo`  se introdujeron tres comentarios en main.tf
2. Tras cada `echo` se utilizo `git commit -am`para generar mensajes en el historial de commits.
3. Con `git rebase í HEAD~3` se seleccionan los últimos 3 commits, y al segundo y tercero se sustituye la instrucción `pick` por `squash`, para unir los 3 commits.
4. Tras guardar los cambios, se borran los commits y se escribe el commit fusionado.
5. Con `git push --force`se actualiza el repositorio en el servidor. 
