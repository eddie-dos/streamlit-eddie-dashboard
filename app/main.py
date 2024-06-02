import os

import numpy as np
import pandas as pd
import streamlit as st


def set_config():
    st.set_page_config(page_title="BROYOLO")


def main():
    set_config()
    df = pd.read_csv(os.path.join("data", "titanic.csv"))
    st.metric(label="Average Age", value=f"{np.nanmean(df['Age']):.1f}")


if __name__ == "__main__":
    main()
