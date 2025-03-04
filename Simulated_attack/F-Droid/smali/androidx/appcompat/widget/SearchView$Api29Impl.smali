.class abstract Landroidx/appcompat/widget/SearchView$Api29Impl;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method static refreshAutoCompleteResults(Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 2137
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->refreshAutoCompleteResults()V

    return-void
.end method

.method static setInputMethodMode(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;I)V
    .locals 0

    .line 2132
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputMethodMode(I)V

    return-void
.end method
