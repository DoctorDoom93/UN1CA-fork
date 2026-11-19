.class final Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;
.super Ljava/lang/Object;
.source "ChatHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/mesalabs/unica/troubleshooting/ChatHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Turn"
.end annotation


# instance fields
.field final answer:Ljava/lang/String;

.field final user:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;->user:Ljava/lang/String;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;->answer:Ljava/lang/String;

    return-void
.end method

