# Este loop permite programar la ejecución de muchos notebooks desde la terminal ssh
# Solo tenemos que estar seguros de estar parados en el directorio correspondiente
for nb in zlgbm.base.v1.ipynb zlgbm.base.v2.ipynb zlgbm.base.v3.ipynb zlgbm.base.v4.ipynb zlgbm.base.v5.ipynb zlgbm.base.v6.ipynb zlgbm.base.v7.ipynb zlgbm.base.v8.ipynb; do
    echo "🚀 Executing: $nb"
    uv run jupyter nbconvert --execute --inplace "$nb"
    echo "✅ Finished: $nb"
    sleep 2  # optional pause between notebooks
done
