#!/bin/bash


kaggle datasets download -d mkechinov/ecommerce-behavior-data-from-multi-category-store
RET_VAL=$?
if [ "$RET_VAL" == "0" ]
then
    echo "ecommerce-behavior-data-from-multi-category-store Dataset Download Completed ..."
    cd /
    unzip /ecommerce-behavior-data-from-multi-category-store.zip
else
    echo "Error In ecommerce-behavior-data-from-multi-category-store Dataset Download ..."
    exit 1
fi



while [ True ]
do
    sleep 60;
done