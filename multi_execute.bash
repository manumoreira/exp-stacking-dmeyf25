# Este loop permite programar la ejecución de muchos notebooks desde la terminal ssh
# Solo tenemos que estar seguros de estar parados en el directorio correspondiente
for nb in zlgbm.IPC.v1.ipynb zlgbm.IPC.v2.ipynb zlgbm.IPC.v3.ipynb zlgbm.IPC.v4.ipynb zlgbm.IPC.v5.ipynb zlgbm.IPC.v6.ipynb zlgbm.Rank.v1.ipynb zlgbm.Rank.v2.ipynb zlgbm.Rank.v3.ipynb zlgbm.Rank.v4.ipynb zlgbm.Rank.v5.ipynb zlgbm.Rank.v6.ipynb; do
    echo "🚀 Executing: $nb"
    uv run jupyter nbconvert --execute --inplace "$nb"
    echo "✅ Finished: $nb"
    sleep 2  # optional pause between notebooks
done
