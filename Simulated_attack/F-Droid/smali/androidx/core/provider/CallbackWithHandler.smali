.class Landroidx/core/provider/CallbackWithHandler;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"


# instance fields
.field private final mCallback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field private final mCallbackHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/CallbackWithHandler;->mCallback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iput-object p2, p0, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private onTypefaceRequestFailed(I)V
    .locals 3

    iget-object v0, p0, Landroidx/core/provider/CallbackWithHandler;->mCallback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iget-object v1, p0, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 68
    new-instance v2, Landroidx/core/provider/CallbackWithHandler$2;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/CallbackWithHandler$2;-><init>(Landroidx/core/provider/CallbackWithHandler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onTypefaceRetrieved(Landroid/graphics/Typeface;)V
    .locals 3

    iget-object v0, p0, Landroidx/core/provider/CallbackWithHandler;->mCallback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iget-object v1, p0, Landroidx/core/provider/CallbackWithHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 55
    new-instance v2, Landroidx/core/provider/CallbackWithHandler$1;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/CallbackWithHandler$1;-><init>(Landroidx/core/provider/CallbackWithHandler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p1, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 83
    :cond_0
    iget p1, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    invoke-direct {p0, p1}, Landroidx/core/provider/CallbackWithHandler;->onTypefaceRequestFailed(I)V

    :goto_0
    return-void
.end method
